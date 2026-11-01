package com.bytedance.sdk.openadsdk.core.aa.EjP;

import com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import t5.a;

/* JADX INFO: loaded from: classes3.dex */
public class TKC extends EjP {
    private final Sj EjP;
    private final List<sP> Sj = Collections.synchronizedList(new ArrayList());
    private int sP = 1;
    private int TKC = 1;

    private class Sj implements a.InterfaceC0921a {
        private Sj() {
        }

        @Override // t5.a.InterfaceC0921a
        public void EjP(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).EjP(aVar);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void HiB(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).HiB(aVar);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar) {
            TKC.Sj(TKC.this);
            if (TKC.this.TKC > TKC.this.sP) {
                Iterator it = TKC.this.Sj.iterator();
                while (it.hasNext()) {
                    ((sP) it.next()).Sj(aVar);
                }
            } else {
                Iterator it2 = TKC.this.Sj.iterator();
                while (it2.hasNext()) {
                    ((sP) it2.next()).Sj(TKC.this.TKC, TKC.this.sP);
                }
                TKC.this.uA();
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar, int i11) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, i11);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar, int i11, int i12) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, i11, i12);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar, int i11, int i12, int i13) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, i11, i12, i13);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar, long j11) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, j11);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar, long j11, long j12) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, j11, j12);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar, y5.a aVar2) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, aVar2);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void Sj(a aVar, boolean z10) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).Sj(aVar, z10);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void TKC(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).TKC(aVar);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void sP(a aVar) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).sP(aVar);
            }
        }

        @Override // t5.a.InterfaceC0921a
        public void sP(a aVar, int i11) {
            Iterator it = TKC.this.Sj.iterator();
            while (it.hasNext()) {
                ((sP) it.next()).sP(aVar, i11);
            }
        }
    }

    public interface sP extends a.InterfaceC0921a {
        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void EjP(a aVar);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void HiB(a aVar);

        void Sj(int i11, int i12);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar, int i11);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar, int i11, int i12);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar, int i11, int i12, int i13);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar, long j11);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar, long j11, long j12);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar, y5.a aVar2);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void Sj(a aVar, boolean z10);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void TKC(a aVar);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void sP(a aVar);

        @Override // t5.a.InterfaceC0921a
        /* synthetic */ void sP(a aVar, int i11);
    }

    public TKC() {
        Sj sj2 = new Sj();
        this.EjP = sj2;
        super.Sj(sj2);
        Sj(500);
    }

    static /* synthetic */ int Sj(TKC tkc) {
        int i11 = tkc.TKC;
        tkc.TKC = i11 + 1;
        return i11;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP
    public void Sj(a.InterfaceC0921a interfaceC0921a) {
        if (!(interfaceC0921a instanceof sP)) {
            super.Sj(interfaceC0921a);
        } else {
            if (this.Sj.contains(interfaceC0921a)) {
                return;
            }
            this.Sj.add((sP) interfaceC0921a);
        }
    }

    public void TKC(int i11) {
        this.sP = Math.max(1, i11);
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP
    public long dNu() {
        return super.dNu() + (((long) (this.TKC - 1)) * super.uvD());
    }

    public int sU() {
        return this.TKC;
    }

    @Override // com.bykv.vk.openvk.Sj.Sj.sP.EjP.EjP
    public long uvD() {
        return super.uvD() * ((long) this.sP);
    }
}
