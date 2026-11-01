package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final FilenameFilter f31189d = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.h
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return j.d(file, str);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Comparator f31190e = new Comparator() { // from class: com.google.firebase.crashlytics.internal.common.i
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return j.e((File) obj, (File) obj2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final vb.g f31191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f31192b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f31193c = null;

    j(vb.g gVar) {
        this.f31191a = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(File file, String str) {
        return str.startsWith("aqs.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }

    private static void f(vb.g gVar, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            gVar.q(str, "aqs." + str2).createNewFile();
        } catch (IOException e11) {
            ob.g.f().l("Failed to persist App Quality Sessions session id.", e11);
        }
    }

    static String g(vb.g gVar, String str) {
        List listR = gVar.r(str, f31189d);
        if (!listR.isEmpty()) {
            return ((File) Collections.min(listR, f31190e)).getName().substring(4);
        }
        ob.g.f().k("Unable to read App Quality Sessions session id.");
        return null;
    }

    public synchronized String c(String str) {
        if (Objects.equals(this.f31192b, str)) {
            return this.f31193c;
        }
        return g(this.f31191a, str);
    }

    public synchronized void h(String str) {
        if (!Objects.equals(this.f31193c, str)) {
            f(this.f31191a, this.f31192b, str);
            this.f31193c = str;
        }
    }

    public synchronized void i(String str) {
        if (!Objects.equals(this.f31192b, str)) {
            f(this.f31191a, str, this.f31193c);
            this.f31192b = str;
        }
    }
}
