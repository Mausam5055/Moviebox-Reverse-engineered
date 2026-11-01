package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class Table$1 implements Comparator<Integer> {
    final /* synthetic */ e this$0;
    final /* synthetic */ ByteBuffer val$bb;

    Table$1(e eVar, ByteBuffer byteBuffer) {
        this.this$0 = eVar;
        this.val$bb = byteBuffer;
    }

    @Override // java.util.Comparator
    public int compare(Integer num, Integer num2) {
        return this.this$0.f(num, num2, this.val$bb);
    }
}
