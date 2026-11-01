package ag;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements bg.a {
    private final Object b(Object obj, String str) {
        Class clsD;
        if (obj == null || str == null) {
            return null;
        }
        String name = obj.getClass().getName();
        Intrinsics.g(name, "getName(...)");
        if (e.e(name, str)) {
            return obj;
        }
        if (Intrinsics.c(obj.getClass().getName(), "java.lang.String") || Intrinsics.c(obj.getClass().getName(), "kotlin.String")) {
            try {
                return e.g(str, obj.toString());
            } catch (NumberFormatException unused) {
            }
        }
        if ((obj instanceof Serializable) || (obj instanceof Parcelable)) {
            return obj;
        }
        String name2 = obj.getClass().getName();
        Intrinsics.g(name2, "getName(...)");
        if (StringsKt.b0(name2, '$', false, 2, null)) {
            Class clsD2 = e.d(str);
            if (Intrinsics.c(clsD2 != null ? clsD2.getName() : null, obj.getClass().getName()) || ((clsD = e.d(str)) != null && clsD.isAssignableFrom(obj.getClass()))) {
                return obj;
            }
        }
        return null;
    }

    @Override // bg.a
    public Object a(String str, Object obj, com.therouter.router.b bVar) {
        Bundle extras;
        Object obj2 = null;
        if (bVar != null && bVar.a() == 0) {
            if (obj instanceof Activity) {
                Intent intent = ((Activity) obj).getIntent();
                if (intent != null && (extras = intent.getExtras()) != null) {
                    obj2 = extras.get(bVar.b());
                }
                return b(obj2, str);
            }
            if (obj instanceof Fragment) {
                Bundle arguments = ((Fragment) obj).getArguments();
                return b(arguments != null ? arguments.get(bVar.b()) : null, str);
            }
            if (obj instanceof androidx.fragment.app.Fragment) {
                Bundle arguments2 = ((androidx.fragment.app.Fragment) obj).getArguments();
                return b(arguments2 != null ? arguments2.get(bVar.b()) : null, str);
            }
        }
        return null;
    }
}
