package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends r<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f20330a = new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.c.1
        @Override // com.bykv.vk.openvk.preload.a.s
        public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new c();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<DateFormat> f20331b;

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f20331b = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (com.bykv.vk.openvk.preload.a.b.d.b()) {
            arrayList.add(com.bykv.vk.openvk.preload.falconx.a.a.a(2, 2));
        }
    }

    private synchronized Date a(String str) {
        Iterator<DateFormat> it = this.f20331b.iterator();
        while (it.hasNext()) {
            try {
                return it.next().parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return com.bykv.vk.openvk.preload.a.b.a.a.a.a(str, new ParsePosition(0));
        } catch (ParseException e11) {
            throw new p(str, e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.a.r
    public synchronized void a(com.bykv.vk.openvk.preload.a.d.c cVar, Date date) throws IOException {
        try {
            if (date == null) {
                cVar.h();
            } else {
                cVar.b(this.f20331b.get(0).format(date));
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.r
    public final /* synthetic */ Date a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
            return a(aVar.h());
        }
        aVar.j();
        return null;
    }
}
