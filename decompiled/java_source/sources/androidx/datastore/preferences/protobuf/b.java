package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final o f8736a = o.b();

    private n0 c(n0 n0Var) throws InvalidProtocolBufferException {
        if (n0Var == null || n0Var.isInitialized()) {
            return n0Var;
        }
        throw d(n0Var).asInvalidProtocolBufferException().setUnfinishedMessage(n0Var);
    }

    private UninitializedMessageException d(n0 n0Var) {
        return n0Var instanceof a ? ((a) n0Var).f() : new UninitializedMessageException(n0Var);
    }

    @Override // androidx.datastore.preferences.protobuf.v0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public n0 a(ByteString byteString, o oVar) {
        return c(f(byteString, oVar));
    }

    public n0 f(ByteString byteString, o oVar) throws InvalidProtocolBufferException {
        i iVarNewCodedInput = byteString.newCodedInput();
        n0 n0Var = (n0) b(iVarNewCodedInput, oVar);
        try {
            iVarNewCodedInput.a(0);
            return n0Var;
        } catch (InvalidProtocolBufferException e11) {
            throw e11.setUnfinishedMessage(n0Var);
        }
    }
}
