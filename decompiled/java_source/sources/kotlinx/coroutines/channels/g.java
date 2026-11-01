package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes7.dex */
public abstract class g {
    public static final d a(int i11, BufferOverflow bufferOverflow, Function1 function1) {
        d bufferedChannel;
        if (i11 == -2) {
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(d.f67686m1.a(), function1) : new m(1, bufferOverflow, function1);
        } else {
            if (i11 == -1) {
                if (bufferOverflow == BufferOverflow.SUSPEND) {
                    return new m(1, BufferOverflow.DROP_OLDEST, function1);
                }
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            }
            if (i11 != 0) {
                if (i11 != Integer.MAX_VALUE) {
                    return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i11, function1) : new m(i11, bufferOverflow, function1);
                }
                return new BufferedChannel(Integer.MAX_VALUE, function1);
            }
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(0, function1) : new m(1, bufferOverflow, function1);
        }
        return bufferedChannel;
    }

    public static /* synthetic */ d b(int i11, BufferOverflow bufferOverflow, Function1 function1, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = 0;
        }
        if ((i12 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i12 & 4) != 0) {
            function1 = null;
        }
        return a(i11, bufferOverflow, function1);
    }
}
