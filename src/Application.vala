/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2021 David Rhoads <kd2flz@outlook.com>
 */

public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: _("com.github.kd2flz.gtk-hello"),
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var button_hello = new Gtk.Button.with_label (_("Click me!")){
            margin = 12
        };

        button_hello.clicked.connect (() => {
            button_hello.label = _("Hello World!");
        });
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = _("Hello World")
        };
        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}