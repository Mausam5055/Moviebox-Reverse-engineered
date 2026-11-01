package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends r<Time> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s f20358a = new s() { // from class: com.bykv.vk.openvk.preload.a.b.a.j.1
        @Override // com.bykv.vk.openvk.preload.a.s
        public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
            if (aVar.a() == Time.class) {
                return new j();
            }
            return null;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateFormat f20359b = new SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.a.r
    public synchronized void a(com.bykv.vk.openvk.preload.a.d.c cVar, Time time) throws IOException {
        cVar.b(time == null ? null : this.f20359b.format((Date) time));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.a.r
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized Time a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
            aVar.j();
            return null;
        }
        try {
            return new Time(this.f20359b.parse(aVar.h()).getTime());
        } catch (ParseException e11) {
            throw new p(e11);
        }
    }
}
