package com.transsion.videofloat.manager;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.graphics.drawable.Icon;

/* JADX INFO: loaded from: classes7.dex */
public abstract /* synthetic */ class m {
    public static /* synthetic */ RemoteAction a(Icon icon, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        return new RemoteAction(icon, charSequence, charSequence2, pendingIntent);
    }
}
