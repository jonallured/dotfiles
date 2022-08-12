#include QMK_KEYBOARD_H

enum layers {
  _BASE,
  _FUNCTION,
  _RGB
};

// Combo Code
#define FNC_CPS LT(_FUNCTION, KC_CAPS)

// Layer Toggle
#define T_RGB TG(_RGB)


const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [_BASE] = LAYOUT_all(
      KC_ESC,  KC_1, KC_2, KC_3, KC_4, KC_5, KC_6,          KC_7, KC_8, KC_9, KC_0,    KC_MINS, KC_EQL,  KC_BSPC, KC_DEL,           KC_MUTE,
      KC_TAB,        KC_Q, KC_W, KC_E, KC_R, KC_T,          KC_Y, KC_U, KC_I, KC_O,    KC_P,    KC_LBRC, KC_RBRC, KC_BSLS,          KC_PGUP,
      FNC_CPS,       KC_A, KC_S, KC_D, KC_F, KC_G,          KC_H, KC_J, KC_K, KC_L,    KC_SCLN, KC_QUOT, KC_ENT,                    KC_PGDN,
      KC_LSFT,       KC_Z, KC_X, KC_C, KC_V, KC_B,          KC_B, KC_N, KC_M, KC_COMM, KC_DOT,  KC_SLSH, KC_RSFT,          KC_UP,   KC_END,
      KC_LCTL, KC_LGUI,          KC_LALT,    KC_SPC,        KC_SPC,     KC_RALT,                KC_RGUI, KC_RCTL, KC_LEFT, KC_DOWN, KC_RGHT
  ),
  [_FUNCTION] = LAYOUT_all(
      RESET,    _______, _______, _______, _______, _______, _______,          _______, _______, _______, _______, _______, _______, _______, _______,          T_RGB,
      _______,           _______, _______, _______, _______, _______,          _______, _______, _______, _______, _______, _______, _______, _______,          _______,
      _______,           _______, _______, _______, _______, _______,          _______, _______, _______, _______, _______, _______, _______,                   _______,
      _______,           _______, _______, _______, _______, _______,          _______, _______, _______, _______, _______, _______, _______,          _______, _______,
      _______, _______,                             _______, _______,          _______, _______,                            _______, _______, _______, _______, _______
  ),
  [_RGB] = LAYOUT_all(
      _______,  RGB_M_P, RGB_M_B, RGB_M_R, RGB_M_SW, RGB_M_SN, RGB_M_K,          RGB_M_X, RGB_M_G, RGB_M_T, _______, _______, _______, _______, _______,           _______,
      _______,           _______, _______, _______,  _______,  _______,          _______, _______, _______, _______, _______, _______, _______, _______,           _______,
      _______,           _______, RGB_SAI, RGB_SAD,  _______,  _______,          RGB_HUI, RGB_HUD, _______, _______, _______, _______, RGB_TOG,                    _______,
      _______,           _______, _______, _______,  RGB_VAI,  RGB_VAD,          _______, _______, _______, _______, _______, _______, _______,           _______, _______,
      _______, _______,                              _______,  _______,          _______, _______,                            _______, _______, RGB_RMOD, _______, RGB_MOD
  ),
  
};

bool encoder_update_user(uint8_t index, bool clockwise) {
    if (index == 0) {
      if (clockwise) {
          tap_code(KC_VOLD);
      } else {
          tap_code(KC_VOLU);
      };
    };
    return false;
};
