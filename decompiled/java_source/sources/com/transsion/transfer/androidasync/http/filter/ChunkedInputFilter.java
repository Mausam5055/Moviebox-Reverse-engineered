package com.transsion.transfer.androidasync.http.filter;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.t;

/* JADX INFO: loaded from: classes6.dex */
public class ChunkedInputFilter extends t {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f55347g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f55348h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private State f55349i = State.CHUNK_LEN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    ByteBufferList f55350j = new ByteBufferList();

    private enum State {
        CHUNK_LEN,
        CHUNK_LEN_CR,
        CHUNK_LEN_CRLF,
        CHUNK,
        CHUNK_CR,
        CHUNK_CRLF,
        COMPLETE,
        ERROR
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f55351a;

        static {
            int[] iArr = new int[State.values().length];
            f55351a = iArr;
            try {
                iArr[State.CHUNK_LEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55351a[State.CHUNK_LEN_CR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55351a[State.CHUNK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55351a[State.CHUNK_CR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f55351a[State.CHUNK_CRLF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f55351a[State.COMPLETE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private boolean O(char c11, char c12) {
        if (c11 == c12) {
            return true;
        }
        this.f55349i = State.ERROR;
        M(new ChunkedDataException(c12 + " was expected, got " + c11));
        return false;
    }

    private boolean P(char c11) {
        return O(c11, '\r');
    }

    private boolean Q(char c11) {
        return O(c11, '\n');
    }

    @Override // com.transsion.transfer.androidasync.t, bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        if (this.f55349i == State.ERROR) {
            byteBufferList.B();
            return;
        }
        while (byteBufferList.C() > 0) {
            try {
                switch (a.f55351a[this.f55349i.ordinal()]) {
                    case 1:
                        char cM = byteBufferList.m();
                        if (cM == '\r') {
                            this.f55349i = State.CHUNK_LEN_CR;
                        } else {
                            int i11 = this.f55347g * 16;
                            this.f55347g = i11;
                            if (cM >= 'a' && cM <= 'f') {
                                this.f55347g = i11 + (cM - 'W');
                            } else if (cM >= '0' && cM <= '9') {
                                this.f55347g = i11 + (cM - '0');
                            } else {
                                if (cM < 'A' || cM > 'F') {
                                    M(new ChunkedDataException("invalid chunk length: " + cM));
                                    return;
                                }
                                this.f55347g = i11 + (cM - '7');
                            }
                        }
                        this.f55348h = this.f55347g;
                        continue;
                    case 2:
                        if (Q(byteBufferList.m())) {
                            this.f55349i = State.CHUNK;
                            continue;
                        } else {
                            return;
                        }
                        break;
                    case 3:
                        int iMin = Math.min(this.f55348h, byteBufferList.C());
                        int i12 = this.f55348h - iMin;
                        this.f55348h = i12;
                        if (i12 == 0) {
                            this.f55349i = State.CHUNK_CR;
                        }
                        if (iMin != 0) {
                            byteBufferList.g(this.f55350j, iMin);
                            a0.a(this, this.f55350j);
                            continue;
                        }
                        break;
                    case 4:
                        if (P(byteBufferList.m())) {
                            this.f55349i = State.CHUNK_CRLF;
                            continue;
                        } else {
                            return;
                        }
                        break;
                    case 5:
                        if (Q(byteBufferList.m())) {
                            if (this.f55347g > 0) {
                                this.f55349i = State.CHUNK_LEN;
                            } else {
                                this.f55349i = State.COMPLETE;
                                M(null);
                            }
                            this.f55347g = 0;
                            continue;
                        } else {
                            return;
                        }
                        break;
                    case 6:
                        return;
                    default:
                        continue;
                }
            } catch (Exception e11) {
                M(e11);
                return;
            }
            M(e11);
            return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.transsion.transfer.androidasync.q
    public void M(Exception exc) {
        if (exc == null && this.f55349i != State.COMPLETE) {
            exc = new ChunkedDataException("chunked input ended before final chunk");
        }
        super.M(exc);
    }
}
