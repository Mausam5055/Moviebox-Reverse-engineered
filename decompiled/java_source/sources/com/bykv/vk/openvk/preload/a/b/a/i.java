package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends r<Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f20356a = new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.i.1
        @Override // com.bykv.vk.openvk.preload.a.s
        public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new i();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f20357b = new SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.a.r
    public synchronized void a(com.bykv.vk.openvk.preload.a.d.c cVar, Date date) throws IOException {
        cVar.b(date == null ? null : this.f20357b.format((java.util.Date) date));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.a.r
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized Date a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
            aVar.j();
            return null;
        }
        try {
            return new Date(this.f20357b.parse(aVar.h()).getTime());
        } catch (ParseException e11) {
            throw new p(e11);
        }
    }
}
