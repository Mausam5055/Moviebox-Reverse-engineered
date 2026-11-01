package com.iab.omid.library.mmadbridge.internal;

import android.view.View;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f33701b = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f33702a = new ArrayList();

    private void b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    private void d(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!f33701b.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    private e e(View view) {
        for (e eVar : this.f33702a) {
            if (eVar.c().get() == view) {
                return eVar;
            }
        }
        return null;
    }

    public List a() {
        return this.f33702a;
    }

    public void c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        b(view);
        d(str);
        if (e(view) == null) {
            this.f33702a.add(new e(view, friendlyObstructionPurpose, str));
        }
    }

    public void f() {
        this.f33702a.clear();
    }

    public void g(View view) {
        b(view);
        e eVarE = e(view);
        if (eVarE != null) {
            this.f33702a.remove(eVarE);
        }
    }
}
