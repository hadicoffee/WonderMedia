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
	    case 114:
	    case 113:
	    case 112:
	    case 111:
             	return HIGHLIGHT_DOWN;

        case 115:
        
                return HIGHLIGHT_UP;

            case 116:
            case 117:
            case 118:
            case 119:
            case KEY_2:
            case KEY_POWER:
                return SELECT_ITEM;
            
	    case KEY_1:
            case KEY_ESC:
                    return GO_BACK;
        }
    }

    return NO_ACTION;
}
