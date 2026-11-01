package com.bumptech.glide.request.target;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class NotificationTarget extends CustomTarget<Bitmap> {
    private final Context context;
    private final Notification notification;
    private final int notificationId;
    private final String notificationTag;
    private final RemoteViews remoteViews;
    private final int viewId;

    @SuppressLint({"InlinedApi"})
    public NotificationTarget(Context context, int i11, int i12, int i13, RemoteViews remoteViews, Notification notification, int i14, String str) {
        super(i11, i12);
        this.context = (Context) Preconditions.checkNotNull(context, "Context must not be null!");
        this.notification = (Notification) Preconditions.checkNotNull(notification, "Notification object can not be null!");
        this.remoteViews = (RemoteViews) Preconditions.checkNotNull(remoteViews, "RemoteViews object can not be null!");
        this.viewId = i13;
        this.notificationId = i14;
        this.notificationTag = str;
    }

    @SuppressLint({"InlinedApi"})
    public NotificationTarget(Context context, int i11, RemoteViews remoteViews, Notification notification, int i12) {
        this(context, i11, remoteViews, notification, i12, null);
    }

    @SuppressLint({"InlinedApi"})
    public NotificationTarget(Context context, int i11, RemoteViews remoteViews, Notification notification, int i12, String str) {
        this(context, Integer.MIN_VALUE, Integer.MIN_VALUE, i11, remoteViews, notification, i12, str);
    }

    @SuppressLint({"InlinedApi"})
    private void setBitmap(@Nullable Bitmap bitmap) {
        this.remoteViews.setImageViewBitmap(this.viewId, bitmap);
        update();
    }

    @SuppressLint({"InlinedApi"})
    private void update() {
        ((NotificationManager) Preconditions.checkNotNull((NotificationManager) this.context.getSystemService("notification"))).notify(this.notificationTag, this.notificationId, this.notification);
    }

    @Override // com.bumptech.glide.request.target.Target
    @SuppressLint({"InlinedApi"})
    public void onLoadCleared(@Nullable Drawable drawable) {
        setBitmap(null);
    }

    @SuppressLint({"InlinedApi"})
    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        setBitmap(bitmap);
    }

    @Override // com.bumptech.glide.request.target.Target
    @SuppressLint({"InlinedApi"})
    public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable Transition transition) {
        onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
    }
}
