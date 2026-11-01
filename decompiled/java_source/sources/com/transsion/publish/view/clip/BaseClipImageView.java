package com.transsion.publish.view.clip;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: classes6.dex */
public class BaseClipImageView extends AppCompatImageView {
    public BaseClipImageView(@NonNull Context context) {
        super(context);
    }

    public BaseClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BaseClipImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        try {
            Drawable drawable = getDrawable();
            if ((drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null && bitmap.isRecycled()) {
                return;
            }
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
    }
}
