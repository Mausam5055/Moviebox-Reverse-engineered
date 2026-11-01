package com.noober.background.common;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.core.content.b;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.gslb.Utils;

/* JADX INFO: loaded from: classes5.dex */
public class ResourceUtils {
    public static int getColor(Context context, String str) {
        Resources resources = context.getResources();
        if (str.startsWith(Utils.SEPARATOR)) {
            return Color.parseColor(str);
        }
        int identifier = resources.getIdentifier(str, TtmlNode.ATTR_TTS_COLOR, context.getPackageName());
        if (identifier == 0) {
            return -1;
        }
        return b.getColor(context, identifier);
    }

    @Nullable
    public static Drawable getDrawable(Context context, String str) {
        Resources resources = context.getResources();
        if (str.startsWith(Utils.SEPARATOR)) {
            return new ColorDrawable(Color.parseColor(str));
        }
        int identifier = resources.getIdentifier(str, "drawable", context.getPackageName());
        if (identifier == 0) {
            identifier = resources.getIdentifier(str, "mipmap", context.getPackageName());
        }
        if (identifier == 0) {
            identifier = resources.getIdentifier(str, TtmlNode.ATTR_TTS_COLOR, context.getPackageName());
        }
        if (identifier == 0) {
            return null;
        }
        return b.getDrawable(context, identifier);
    }
}
