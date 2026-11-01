package com.mbridge.msdk.dycreator.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile f f34896b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mbridge.msdk.dycreator.engine.b f34897a;

    private f(Context context) {
        this.f34897a = null;
        com.mbridge.msdk.dycreator.engine.b bVarA = com.mbridge.msdk.dycreator.engine.b.a();
        this.f34897a = bVarA;
        bVarA.a(context, "");
    }

    public static f a(Context context) {
        if (f34896b == null) {
            synchronized (f.class) {
                try {
                    if (f34896b == null) {
                        f34896b = new f(context.getApplicationContext());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34896b;
    }

    public View a(ViewGroup viewGroup, String str) {
        if (viewGroup != null && !TextUtils.isEmpty(str)) {
            if (viewGroup.getId() == str.hashCode()) {
                return viewGroup;
            }
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = viewGroup.getChildAt(i11);
                if (childAt.getId() == str.hashCode()) {
                    return childAt;
                }
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, str);
                }
            }
        }
        return null;
    }

    public View a(String str) {
        if (new File(str).exists()) {
            return this.f34897a.e(str);
        }
        return null;
    }
}
