#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"


int device_toggle_display(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
                switch (key_code) {

case KEY_DOWN:
case KEY_VOLUMEDOWN:
                return HIGHLIGHT_DOWN;


case KEY_LEFTSHIFT:
case KEY_UP:
case KEY_VOLUMEUP:
case KEY_HOME:
                return HIGHLIGHT_UP;

case 116:
                return SELECT_ITEM;
            
case KEY_BACK:
case KEY_ESC:
                return GO_BACK;
        }
    }

                return NO_ACTION;
}
