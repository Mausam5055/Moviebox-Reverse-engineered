package com.google.android.gms.auth;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes3.dex */
public class UserRecoverableNotifiedException extends GoogleAuthException {
    public UserRecoverableNotifiedException(@NonNull String str) {
        super(str);
    }

    public UserRecoverableNotifiedException(@NonNull String str, @NonNull Throwable th2) {
        super(str, th2);
    }
}
