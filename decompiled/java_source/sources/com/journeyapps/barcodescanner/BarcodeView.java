package com.journeyapps.barcodescanner;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import com.google.zxing.DecodeHintType;
import com.google.zxing.client.android.R$id;
import java.util.HashMap;
import java.util.List;
import xe.g;
import xe.h;
import xe.i;
import xe.j;
import xe.k;
import xe.s;

/* JADX INFO: loaded from: classes4.dex */
public class BarcodeView extends CameraPreview {
    private DecodeMode B;
    private xe.a C;
    private j D;
    private h E;
    private Handler F;
    private final Handler.Callback G;

    private enum DecodeMode {
        NONE,
        SINGLE,
        CONTINUOUS
    }

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == R$id.zxing_decode_succeeded) {
                xe.c cVar = (xe.c) message.obj;
                if (cVar != null && BarcodeView.this.C != null && BarcodeView.this.B != DecodeMode.NONE) {
                    BarcodeView.this.C.b(cVar);
                    if (BarcodeView.this.B == DecodeMode.SINGLE) {
                        BarcodeView.this.stopDecoding();
                    }
                }
                return true;
            }
            if (i11 == R$id.zxing_decode_failed) {
                return true;
            }
            if (i11 != R$id.zxing_possible_result_points) {
                return false;
            }
            List list = (List) message.obj;
            if (BarcodeView.this.C != null && BarcodeView.this.B != DecodeMode.NONE) {
                BarcodeView.this.C.a(list);
            }
            return true;
        }
    }

    public BarcodeView(Context context) {
        super(context);
        this.B = DecodeMode.NONE;
        this.C = null;
        this.G = new a();
        C();
    }

    public BarcodeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.B = DecodeMode.NONE;
        this.C = null;
        this.G = new a();
        C();
    }

    public BarcodeView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.B = DecodeMode.NONE;
        this.C = null;
        this.G = new a();
        C();
    }

    private g A() {
        if (this.E == null) {
            this.E = B();
        }
        i iVar = new i();
        HashMap map = new HashMap();
        map.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, iVar);
        g gVarA = this.E.a(map);
        iVar.b(gVarA);
        return gVarA;
    }

    private void C() {
        this.E = new k();
        this.F = new Handler(this.G);
    }

    private void D() {
        E();
        if (this.B == DecodeMode.NONE || !isPreviewActive()) {
            return;
        }
        j jVar = new j(getCameraInstance(), A(), this.F);
        this.D = jVar;
        jVar.i(getPreviewFramingRect());
        this.D.k();
    }

    private void E() {
        j jVar = this.D;
        if (jVar != null) {
            jVar.l();
            this.D = null;
        }
    }

    protected h B() {
        return new k();
    }

    public void decodeContinuous(xe.a aVar) {
        this.B = DecodeMode.CONTINUOUS;
        this.C = aVar;
        D();
    }

    public void decodeSingle(xe.a aVar) {
        this.B = DecodeMode.SINGLE;
        this.C = aVar;
        D();
    }

    public h getDecoderFactory() {
        return this.E;
    }

    @Override // com.journeyapps.barcodescanner.CameraPreview
    public void pause() {
        E();
        super.pause();
    }

    @Override // com.journeyapps.barcodescanner.CameraPreview
    protected void s() {
        super.s();
        D();
    }

    public void setDecoderFactory(h hVar) {
        s.a();
        this.E = hVar;
        j jVar = this.D;
        if (jVar != null) {
            jVar.j(A());
        }
    }

    public void stopDecoding() {
        this.B = DecodeMode.NONE;
        this.C = null;
        E();
    }
}
