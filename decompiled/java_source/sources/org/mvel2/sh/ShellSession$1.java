package org.mvel2.sh;

import java.io.InputStream;
import java.io.PrintStream;
import r10.d;

/* JADX INFO: loaded from: classes7.dex */
class ShellSession$1 implements Runnable {
    final /* synthetic */ a this$0;
    final /* synthetic */ InputStream val$inStream;
    final /* synthetic */ a.C0874a val$runState;
    final /* synthetic */ PrintStream val$sysPrintStream;

    ShellSession$1(a aVar, InputStream inputStream, PrintStream printStream, a.C0874a c0874a) {
        this.this$0 = aVar;
        this.val$inStream = inputStream;
        this.val$sysPrintStream = printStream;
    }

    @Override // java.lang.Runnable
    public void run() {
        byte[] bArr = new byte[25];
        while (true) {
            try {
                int i11 = this.val$inStream.read(bArr);
                if (i11 <= 0) {
                    break;
                }
                for (int i12 = 0; i12 < i11; i12++) {
                    this.val$sysPrintStream.print((char) bArr[i12]);
                }
                this.val$sysPrintStream.flush();
            } catch (Exception unused) {
                this.val$sysPrintStream.flush();
                if (this.this$0.f72015g) {
                    PrintStream printStreamAppend = this.this$0.f72017i.append((CharSequence) ">");
                    a aVar = this.this$0;
                    printStreamAppend.append((CharSequence) aVar.j((aVar.f72016h - 1) + (this.this$0.f72014f * 4)));
                    return;
                } else {
                    a aVar2 = this.this$0;
                    aVar2.f72016h = aVar2.f72018j = String.valueOf(d.b((String) aVar2.f72011c.get("$PROMPT"), this.this$0.f72010b)).length();
                    this.this$0.f72017i.append((CharSequence) this.this$0.f72018j);
                    return;
                }
            }
        }
        throw null;
    }
}
