from tkinter import *
from ctypes import *
from numpy.ctypeslib import ndpointer
import numpy
from tkinter import ttk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import matplotlib
import random
matplotlib.use('TkAgg')


root = Tk()
root.title('Convex Hull')
sub_frame = ttk.LabelFrame(root, height=10)
algorithm_option = StringVar()
selected = ttk.Combobox(sub_frame, width=20, textvariable=algorithm_option, state="readonly")
selected["values"] = ("Graham's Scan", "Jarvis March", "Kirk Patrick Seidel")
selected.grid(column=0, row=0)
selected.current(0)
points_input = ttk.Entry(sub_frame, width=20)
points_input.insert(0, "# points")
points_input.grid(column=1, row=0)
number_of_points = 0
x = list()
y = list()


def set_param():
    algorithm = selected.get()
    print(algorithm)
    length = len(x)
    fun = c_double*length
    param_x = fun(*x)
    param_y = fun(*y)
    cal = CDLL("./ex.so")
    x_p_out = numpy.zeros(length).astype(numpy.double)
    y_p_out = numpy.zeros(length).astype(numpy.double)
    cal.c_func.argtypes = [c_int, POINTER(c_double), POINTER(c_double), ndpointer(c_double), ndpointer(c_double)]
    ch_length = cal.c_func(length, param_x, param_y, x_p_out, y_p_out)
    # print(ch_length)
    # print(x_p_out)
    x_p_out = x_p_out[:ch_length+1]
    y_p_out = y_p_out[:ch_length+1]
    # print(x_p_out)
    # print(y_p_out)
    x_p_out[ch_length] = x_p_out[0]
    y_p_out[ch_length] = y_p_out[0]
    global frame, root, canvas
    frame.destroy()
    frame = Frame(root, bd=2, relief=SUNKEN)
    frame.grid_rowconfigure(0, weight=1)
    frame.grid_columnconfigure(0, weight=1)
    f = Figure()
    a = f.add_subplot(111)
    a.scatter(x, y)
    a.plot(x_p_out,  y_p_out)
    canvas = FigureCanvasTkAgg(f, master=root)
    canvas.get_tk_widget().pack(side=TOP, fill=BOTH, expand=1)


def random_points():
    global number_of_points, canvas, x, y
    number_of_points = int(points_input.get())
    x = [random.randint(0, 850) for i in range(number_of_points)]
    y = [random.randint(0, 550) for i in range(number_of_points)]
    it = 0
    while it < number_of_points:
        canvas.create_oval(x[it], y[it], x[it], y[it])
        it += 1


gen_random = ttk.Button(sub_frame, width=15, text="Random Points", command=random_points)
gen_random.grid(column=2, row=0)
set_button = ttk.Button(sub_frame, width=5, text="Set", command=set_param)  # command will call
set_button.grid(column=3, row=0)
sub_frame.pack(padx=1, pady=1)
# setting up a tkinter canvas with scrollbars
frame = Frame(root, bd=2, relief=SUNKEN)
frame.grid_rowconfigure(0, weight=1)
frame.grid_columnconfigure(0, weight=1)
xscroll = Scrollbar(frame, orient=HORIZONTAL)
xscroll.grid(row=1, column=0, sticky=E + W)
yscroll = Scrollbar(frame)
yscroll.grid(row=0, column=1, sticky=N + S)
canvas = Canvas(frame, bd=0, xscrollcommand=xscroll.set, yscrollcommand=yscroll.set)
canvas.grid(row=0, column=0, sticky=N + S + E + W)
xscroll.config(command=canvas.xview)
yscroll.config(command=canvas.yview)
frame.pack(fill=BOTH, expand=1)


# function to be called when mouse is clicked
def get_coords(event):
    # outputting x and y coords to console
    global x, y
    # print(event.x, event.y)
    x.append(event.x)
    y.append(event.y)
    canvas.create_oval(event.x, event.y, event.x, event.y)


# mouse click event
canvas.bind("<Button 1>", get_coords)


if __name__ == "__main__":

    root.minsize(width=900, height=620)
    root.resizable(0, 0)
    root.mainloop()
