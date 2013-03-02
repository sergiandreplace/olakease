#!/usr/bin/env python

from gi.repository import GLib, Gtk

def main():

    window = Gtk.Window(type=Gtk.WindowType.TOPLEVEL)
    window.set_title('ola ke ase')
    window.set_default_size(150, 100)

    label = Gtk.Label('ola ke ase')

    window.add(label)

    mainloop = GLib.MainLoop()
    window.connect('delete-event', quit, mainloop)
    
    window.show_all()

    mainloop.run()

def quit(widget, event, mainloop):
    mainloop.quit()

if __name__ == '__main__':
    main()

