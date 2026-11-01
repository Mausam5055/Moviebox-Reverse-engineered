package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.firebase.FirebaseException;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseInstallationsException extends FirebaseException {

    @NonNull
    private final Status status;

    /* JADX INFO: loaded from: classes4.dex */
    public enum Status {
        BAD_CONFIG,
        UNAVAILABLE,
        TOO_MANY_REQUESTS
    }

    public FirebaseInstallationsException(@NonNull Status status) {
        this.status = status;
    }

    public FirebaseInstallationsException(@NonNull String str, @NonNull Status status) {
        super(str);
        this.status = status;
    }

    public FirebaseInstallationsException(@NonNull String str, @NonNull Status status, @NonNull Throwable th2) {
        super(str, th2);
        this.status = status;
    }

    @NonNull
    public Status getStatus() {
        return this.status;
    }
}
