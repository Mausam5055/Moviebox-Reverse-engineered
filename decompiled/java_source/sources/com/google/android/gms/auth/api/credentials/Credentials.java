package com.google.android.gms.auth.api.credentials;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.Auth;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public class Credentials {
    @NonNull
    public static CredentialsClient getClient(@NonNull Activity activity) {
        return new CredentialsClient(activity, (Auth.AuthCredentialsOptions) CredentialsOptions.DEFAULT);
    }

    @NonNull
    public static CredentialsClient getClient(@NonNull Activity activity, @NonNull CredentialsOptions credentialsOptions) {
        return new CredentialsClient(activity, (Auth.AuthCredentialsOptions) credentialsOptions);
    }

    @NonNull
    public static CredentialsClient getClient(@NonNull Context context) {
        return new CredentialsClient(context, CredentialsOptions.DEFAULT);
    }

    @NonNull
    public static CredentialsClient getClient(@NonNull Context context, @NonNull CredentialsOptions credentialsOptions) {
        return new CredentialsClient(context, credentialsOptions);
    }
}
