package com.bytedance.sdk.component.HiB.HiB;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements uA {
    private byte[] Sj;
    private com.bytedance.sdk.component.HiB.vS sP;

    public sP(byte[] bArr, com.bytedance.sdk.component.HiB.vS vSVar) {
        this.Sj = bArr;
        this.sP = vSVar;
    }

    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public String Sj() {
        return "image_type";
    }

    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        uA ym2;
        int iAa = tkc.aa();
        tkc.Sj(this.Sj.length);
        if (iAa != 2) {
            if (iAa != 3) {
                boolean zSP = com.bytedance.sdk.component.utils.vS.sP(this.Sj);
                ym2 = (!zSP && com.bytedance.sdk.component.utils.vS.Sj(this.Sj)) ? new HiB(this.Sj, this.sP) : new Fmk(this.Sj, this.sP, zSP);
            } else {
                byte[] bArr = this.Sj;
                ym2 = new Fmk(bArr, this.sP, com.bytedance.sdk.component.utils.vS.sP(bArr));
            }
        } else if (com.bytedance.sdk.component.utils.vS.Sj(this.Sj)) {
            ym2 = new HiB(this.Sj, this.sP);
        } else {
            ym2 = this.sP == null ? new Ym() : new Dq(1001, "not image format", null);
        }
        tkc.Sj(ym2);
    }
}
