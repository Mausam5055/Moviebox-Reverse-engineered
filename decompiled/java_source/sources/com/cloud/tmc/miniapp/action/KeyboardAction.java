package com.cloud.tmc.miniapp.action;

import android.view.View;
import com.cloud.tmc.integration.proxy.IKeyboardProxy;
import com.cloud.tmc.kernel.proxy.TmcProxy;

/* JADX INFO: loaded from: classes3.dex */
public interface KeyboardAction {

    public static final class DefaultImpls {
        public static void hideKeyboard(KeyboardAction keyboardAction, View view) {
            ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).hideKeyboard(view);
        }

        public static void showKeyboard(KeyboardAction keyboardAction, View view) {
            ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).showKeyboard(view);
        }

        public static void toggleSoftInput(KeyboardAction keyboardAction, View view) {
            ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).toggleSoftInput(view);
        }
    }

    void hideKeyboard(View view);

    void showKeyboard(View view);

    void toggleSoftInput(View view);
}
