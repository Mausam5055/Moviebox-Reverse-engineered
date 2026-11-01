package k0;

import java.text.CharacterIterator;

/* JADX INFO: loaded from: classes2.dex */
public final class b0 implements CharacterIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f66470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f66471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f66472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f66473d;

    public b0(CharSequence charSequence, int i11, int i12) {
        this.f66470a = charSequence;
        this.f66471b = i11;
        this.f66472c = i12;
        this.f66473d = i11;
    }

    @Override // java.text.CharacterIterator
    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.text.CharacterIterator
    public char current() {
        int i11 = this.f66473d;
        if (i11 == this.f66472c) {
            return (char) 65535;
        }
        return this.f66470a.charAt(i11);
    }

    @Override // java.text.CharacterIterator
    public char first() {
        this.f66473d = this.f66471b;
        return current();
    }

    @Override // java.text.CharacterIterator
    public int getBeginIndex() {
        return this.f66471b;
    }

    @Override // java.text.CharacterIterator
    public int getEndIndex() {
        return this.f66472c;
    }

    @Override // java.text.CharacterIterator
    public int getIndex() {
        return this.f66473d;
    }

    @Override // java.text.CharacterIterator
    public char last() {
        int i11 = this.f66471b;
        int i12 = this.f66472c;
        if (i11 == i12) {
            this.f66473d = i12;
            return (char) 65535;
        }
        int i13 = i12 - 1;
        this.f66473d = i13;
        return this.f66470a.charAt(i13);
    }

    @Override // java.text.CharacterIterator
    public char next() {
        int i11 = this.f66473d + 1;
        this.f66473d = i11;
        int i12 = this.f66472c;
        if (i11 < i12) {
            return this.f66470a.charAt(i11);
        }
        this.f66473d = i12;
        return (char) 65535;
    }

    @Override // java.text.CharacterIterator
    public char previous() {
        int i11 = this.f66473d;
        if (i11 <= this.f66471b) {
            return (char) 65535;
        }
        int i12 = i11 - 1;
        this.f66473d = i12;
        return this.f66470a.charAt(i12);
    }

    @Override // java.text.CharacterIterator
    public char setIndex(int i11) {
        int i12 = this.f66471b;
        if (i11 > this.f66472c || i12 > i11) {
            throw new IllegalArgumentException("invalid position");
        }
        this.f66473d = i11;
        return current();
    }
}
