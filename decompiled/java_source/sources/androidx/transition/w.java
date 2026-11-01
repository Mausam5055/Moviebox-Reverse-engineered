package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f15110b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f15109a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList f15111c = new ArrayList();

    @Deprecated
    public w() {
    }

    public w(View view) {
        this.f15110b = view;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f15110b == wVar.f15110b && this.f15109a.equals(wVar.f15109a);
    }

    public int hashCode() {
        return (this.f15110b.hashCode() * 31) + this.f15109a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f15110b + "\n") + "    values:";
        for (String str2 : this.f15109a.keySet()) {
            str = str + "    " + str2 + ": " + this.f15109a.get(str2) + "\n";
        }
        return str;
    }
}
