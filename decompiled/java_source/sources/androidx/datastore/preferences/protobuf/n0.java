package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface n0 extends o0 {

    public interface a extends o0, Cloneable {
        n0 buildPartial();

        a mergeFrom(byte[] bArr);
    }

    void a(CodedOutputStream codedOutputStream);

    v0 getParserForType();

    int getSerializedSize();

    a newBuilderForType();

    byte[] toByteArray();

    ByteString toByteString();
}
