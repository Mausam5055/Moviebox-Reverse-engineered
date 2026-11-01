package com.google.firebase.remoteconfig;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.FirebaseException;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseRemoteConfigException extends FirebaseException {
    private final Code code;

    /* JADX INFO: loaded from: classes4.dex */
    public enum Code {
        UNKNOWN(0),
        CONFIG_UPDATE_STREAM_ERROR(1),
        CONFIG_UPDATE_MESSAGE_INVALID(2),
        CONFIG_UPDATE_NOT_FETCHED(3),
        CONFIG_UPDATE_UNAVAILABLE(4);

        private final int value;

        Code(int i11) {
            this.value = i11;
        }

        public int value() {
            return this.value;
        }
    }

    public FirebaseRemoteConfigException(@NonNull String str) {
        super(str);
        this.code = Code.UNKNOWN;
    }

    public FirebaseRemoteConfigException(@NonNull String str, @NonNull Code code) {
        super(str);
        this.code = code;
    }

    public FirebaseRemoteConfigException(@NonNull String str, @Nullable Throwable th2) {
        super(str, th2);
        this.code = Code.UNKNOWN;
    }

    public FirebaseRemoteConfigException(@NonNull String str, @Nullable Throwable th2, @NonNull Code code) {
        super(str, th2);
        this.code = code;
    }

    @NonNull
    public Code getCode() {
        return this.code;
    }
}
