package com.iab.omid.library.hisavana.internal;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f33582b = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f33583a = new ArrayList();

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
            if (!f33582b.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }

    private e e(View view) {
        for (e eVar : this.f33583a) {
            if (eVar.c().get() == view) {
                return eVar;
            }
        }
        return null;
    }

    public List a() {
        return this.f33583a;
    }

    public void c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        b(view);
        d(str);
        if (e(view) == null) {
            this.f33583a.add(new e(view, friendlyObstructionPurpose, str));
        }
    }

    public void f() {
        this.f33583a.clear();
    }
}
