.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;

# interfaces
.implements Lcom/transsion/player/orplayer/f;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/view/ImmVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0002\u00f5\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\rB\u001b\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0011Jk\u0010!\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010 \u001a\u00020\u0018\u00a2\u0006\u0004\u0008!\u0010\"J\u001d\u0010\'\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010+\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008+\u0010,J\r\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00102\u001a\u00020\u00182\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u001f\u00107\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u0006\u00101\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u00089\u0010\u0011J\u0019\u0010<\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u000f\u00a2\u0006\u0004\u0008>\u0010\u0011J\u0017\u0010?\u001a\u00020\u000f2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008?\u0010@J\u0015\u0010B\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u001a\u00a2\u0006\u0004\u0008B\u0010@J\u000f\u0010C\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008C\u0010\u0011J\u000f\u0010D\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008D\u0010\u0011J\u0019\u0010E\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008E\u0010=J\u0019\u0010F\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008F\u0010=J\u0019\u0010G\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008G\u0010=J!\u0010J\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020H2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0019\u0010L\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008L\u0010=J\u0019\u0010M\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008M\u0010=J!\u0010P\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020N2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008R\u0010\u0011J\u0019\u0010S\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008S\u0010=J\u000f\u0010T\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008T\u0010\u0011J\u0019\u0010W\u001a\u00020\u000f2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\r\u0010Y\u001a\u00020\u000f\u00a2\u0006\u0004\u0008Y\u0010\u0011J\u0019\u0010[\u001a\u00020\u000f2\u0008\u0010Z\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008[\u0010@J\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\\\u0010\rJ\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008]\u0010^J\u0017\u0010_\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008_\u0010^J\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008a\u0010bJ\u0017\u0010d\u001a\u00020\u000f2\u0006\u0010c\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008d\u0010bJ\u0017\u0010e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008e\u0010^J\u0017\u0010f\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008f\u0010^J\u0017\u0010g\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008g\u0010^J\u001f\u0010j\u001a\u00020\u000f2\u0006\u0010h\u001a\u00020\u00182\u0006\u0010i\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008j\u0010kJ\u0017\u0010l\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008l\u0010^J\u001f\u0010o\u001a\u00020\u000f2\u0006\u0010n\u001a\u00020m2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008q\u0010^J\u001f\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008s\u0010tJ\u000f\u0010u\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008u\u0010\u0011J\u000f\u0010v\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008v\u0010\u0011J\u000f\u0010w\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008w\u0010\u0011J\u000f\u0010x\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008x\u0010\u0011J\u0017\u0010z\u001a\u00020\u000f2\u0006\u0010y\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008z\u0010{J\u0017\u0010|\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020HH\u0002\u00a2\u0006\u0004\u0008|\u0010bJ\u0017\u0010~\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0004\u0008~\u0010XJ\u000f\u0010\u007f\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u007f\u0010\u0011J\u0019\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0080\u0001\u0010XJ\u0019\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0081\u0001\u0010XJ\u0019\u0010\u0082\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0082\u0001\u0010XJ\u001c\u0010\u0085\u0001\u001a\u00020\u000f2\u0008\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0002\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0086\u0001J\u001c\u0010\u0088\u0001\u001a\u00020\u000f2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0005\u0008\u0088\u0001\u0010@J\u0019\u0010\u0089\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0089\u0001\u0010XJ\u0019\u0010\u008a\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u008a\u0001\u0010XJ\u0019\u0010\u008b\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u008b\u0001\u0010XJ\u0011\u0010\u008c\u0001\u001a\u00020\u000fH\u0002\u00a2\u0006\u0005\u0008\u008c\u0001\u0010\u0011J\u001a\u0010\u008e\u0001\u001a\u00020\u000f2\u0007\u0010\u008d\u0001\u001a\u00020\u0018H\u0002\u00a2\u0006\u0005\u0008\u008e\u0001\u0010{J\u0019\u0010\u008f\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u008f\u0001\u0010XJ\u0019\u0010\u0090\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002\u00a2\u0006\u0005\u0008\u0090\u0001\u0010XR\u0017\u0010\u0093\u0001\u001a\u00020\u001a8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u0018\u0010\u0097\u0001\u001a\u00030\u0094\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001R\u001c\u0010\u00a3\u0001\u001a\u0005\u0018\u00010\u00a0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R\u001c\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u00a4\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u001b\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R*\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001\"\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u0092\u0001R\u0018\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u0092\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\u001c\u0010\u00c0\u0001\u001a\u0005\u0018\u00010\u00bd\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\u001c\u0010\u00c4\u0001\u001a\u0005\u0018\u00010\u00c1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R\u001c\u0010\u00c8\u0001\u001a\u0005\u0018\u00010\u00c5\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R#\u0010\u00ce\u0001\u001a\u0005\u0018\u00010\u00c9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\u001a\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R\u001c\u0010\u00d2\u0001\u001a\u0005\u0018\u00010\u00cf\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001R\u001c\u0010\u00d6\u0001\u001a\u0005\u0018\u00010\u00d3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R\u0018\u0010\u00d8\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008V\u0010\u00d7\u0001R\u0019\u0010\u00da\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u00d7\u0001R\u0019\u0010\u00dc\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00db\u0001\u0010\u00d7\u0001R\u0018\u0010\u00dd\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008[\u0010\u00d7\u0001R\u0019\u0010\u00de\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u00d7\u0001R\u0018\u0010\u00e0\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008o\u0010\u00df\u0001R\u0015\u0010\u00e1\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010vR\u0016\u0010\u00e2\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010vR\u0016\u0010\u00e4\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00e3\u0001\u0010vR\u0016\u0010\u00e6\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00e5\u0001\u0010vR\u0016\u0010\u00e7\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010vR\u0016\u0010\u00e8\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010vR\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u0092\u0001R\u0017\u0010\u00eb\u0001\u001a\u00030\u00e9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008v\u0010\u00ea\u0001R\u0019\u0010\u00ec\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00df\u0001R\u0018\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ed\u0001\u0010\u00d7\u0001R\u0018\u0010\u00ee\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008w\u0010\u00d7\u0001R\u0019\u0010\u00f0\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ef\u0001\u0010\u00d7\u0001R\u0016\u0010\u00f1\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010vR\u0018\u0010 \u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u00d7\u0001R\u001b\u0010\u00f4\u0001\u001a\u0005\u0018\u00010\u00f2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008|\u0010\u00f3\u0001R\u0018\u0010\u00f8\u0001\u001a\u00030\u00f5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f6\u0001\u0010\u00f7\u0001R!\u0010\u00fd\u0001\u001a\u00030\u00f9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00fa\u0001\u0010\u00cb\u0001\u001a\u0006\u0008\u00fb\u0001\u0010\u00fc\u0001R\u001f\u0010\u0080\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00fe\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008~\u0010\u00ff\u0001\u00a8\u0006\u0082\u0002\u00b2\u0006\u000e\u0010\u009b\u0001\u001a\u00030\u0098\u00018\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u009f\u0001\u001a\u00030\u009c\u00018\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0081\u0002\u001a\u00030\u00a0\u00018\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ImmVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/f;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/r;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "item",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "position",
        "",
        "videoLoadMore",
        "",
        "basePostId",
        "baseItemType",
        "attachToMain",
        "commentId",
        "pageFrom",
        "isFromDownloaded",
        "setData",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V",
        "Lcom/transsion/player/orplayer/g;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "setPlayer",
        "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "setPagerLayoutManager",
        "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V",
        "Landroid/widget/FrameLayout;",
        "getPlayerContainer",
        "()Landroid/widget/FrameLayout;",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroidx/lifecycle/u;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onStateChanged",
        "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V",
        "onPlayerReset",
        "Lao/e;",
        "mediaSource",
        "onPlayerRelease",
        "(Lao/e;)V",
        "app2Background",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "onRenderFirstFrame",
        "onVideoStart",
        "onPrepare",
        "onVideoPause",
        "",
        "progress",
        "onProgress",
        "(JLao/e;)V",
        "onLoadingBegin",
        "onLoadingEnd",
        "Lcom/transsion/player/orplayer/PlayError;",
        "errorInfo",
        "onPlayError",
        "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V",
        "onLoopingStart",
        "onCompletion",
        "setOnSeekCompleteListener",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "showCommentDialog",
        "type",
        "y",
        "B",
        "p0",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "i0",
        "comment",
        "e0",
        "(J)V",
        "share",
        "l0",
        "o0",
        "setBottomSubjectModuleData",
        "setBottomRoomModuleData",
        "isShowSubject",
        "isShowRoom",
        "setBottomSubjectAndRoomVisibility",
        "(ZZ)V",
        "f0",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "hotComment",
        "A",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "W",
        "moduleName",
        "X",
        "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "m0",
        "I",
        "L",
        "U",
        "show",
        "setLoading",
        "(Z)V",
        "P",
        "view",
        "S",
        "j0",
        "O",
        "N",
        "T",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "download",
        "Y",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "id",
        "z",
        "F",
        "H",
        "G",
        "C",
        "visible",
        "setContentVisibility",
        "c0",
        "d0",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lso/y;",
        "b",
        "Lso/y;",
        "viewBinding",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "c",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "videoDetailModel",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "d",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "shortTvPlayListViewModel",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "e",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "mCommentViewModel",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "f",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "mShareDialog",
        "g",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "data",
        "h",
        "Landroidx/fragment/app/Fragment;",
        "i",
        "Ljava/lang/Boolean;",
        "j",
        "Ljava/lang/Integer;",
        "getPosition",
        "()Ljava/lang/Integer;",
        "setPosition",
        "(Ljava/lang/Integer;)V",
        "k",
        "l",
        "m",
        "Lcom/transsion/player/orplayer/g;",
        "n",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "o",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "Lcom/transsion/room/api/IAudioApi;",
        "p",
        "Lcom/transsion/room/api/IAudioApi;",
        "audioApi",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "q",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "guideView",
        "Landroid/view/GestureDetector;",
        "r",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "s",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "loginApi",
        "Lcom/transsion/postdetail/layer/b;",
        "t",
        "Lcom/transsion/postdetail/layer/b;",
        "dotLayer",
        "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;",
        "u",
        "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;",
        "commentDialog",
        "Z",
        "isClickPause",
        "w",
        "isHorizontalDragging",
        "x",
        "isPageHide",
        "isShowHotComment",
        "isFavoriteShow",
        "J",
        "currentSaveProgress",
        "resImgLargeWidth",
        "resImgLargeHeight",
        "D",
        "resImgSmallWidth",
        "E",
        "resImgSmallHeight",
        "screenHeight",
        "dp170",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isSeekToFinish",
        "nextSeekTo",
        "K",
        "isPageRelease",
        "M",
        "isLongPressTriggered",
        "screenWidth",
        "Landroid/animation/ObjectAnimator;",
        "Landroid/animation/ObjectAnimator;",
        "rotateAnimator",
        "com/transsion/postdetail/ui/view/ImmVideoItemView$b",
        "Q",
        "Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;",
        "downloadListener",
        "Lcom/transsnet/downloader/manager/g;",
        "R",
        "getDownloadManager",
        "()Lcom/transsnet/downloader/manager/g;",
        "downloadManager",
        "Landroidx/lifecycle/c0;",
        "Landroidx/lifecycle/c0;",
        "favoriteResultObserver",
        "commentViewModel",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private A:J

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private H:Ljava/lang/String;

.field private final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private J:J

.field private K:Z

.field private L:Z

.field private M:Z

.field private final N:I

.field private O:Z

.field private P:Landroid/animation/ObjectAnimator;

.field private final Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

.field private final R:Lkotlin/Lazy;

.field private final S:Landroidx/lifecycle/c0;

.field private final a:Ljava/lang/String;

.field private final b:Lso/y;

.field private c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

.field private d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

.field private e:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

.field private f:Lcom/transsion/share/share/ShareDialogFragment;

.field private g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private h:Landroidx/fragment/app/Fragment;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/transsion/player/orplayer/g;

.field private n:Lcom/transsion/player/ui/ORPlayerView;

.field private o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private p:Lcom/transsion/room/api/IAudioApi;

.field private q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

.field private r:Landroid/view/GestureDetector;

.field private final s:Lkotlin/Lazy;

.field private t:Lcom/transsion/postdetail/layer/b;

.field private u:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "ImmVideoPlayer"

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l:Ljava/lang/String;

    new-instance p2, Lcom/transsion/postdetail/ui/view/c;

    invoke-direct {p2}, Lcom/transsion/postdetail/ui/view/c;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->s:Lkotlin/Lazy;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->F:I

    const/high16 p2, 0x432a0000    # 170.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->G:I

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->K:Z

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->N:I

    new-instance p2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    new-instance p2, Lcom/transsion/postdetail/ui/view/i;

    invoke-direct {p2}, Lcom/transsion/postdetail/ui/view/i;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->R:Lkotlin/Lazy;

    new-instance p2, Lcom/transsion/postdetail/ui/view/j;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/j;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S:Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/transsion/postdetail/R$layout;->layout_immersion_video_item_view:I

    invoke-static {p2, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lso/y;->a(Landroid/view/View;)Lso/y;

    move-result-object p2

    const-string p3, "bind(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p3, p2, Lso/y;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->r:Lso/e0;

    iget-object p3, p3, Lso/e0;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->r:Lso/e0;

    iget-object p3, p3, Lso/e0;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/y;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p3, 0x42400000    # 48.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->B:I

    const/high16 p3, 0x42800000    # 64.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->C:I

    const/high16 p3, 0x41c00000    # 24.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->D:I

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->E:I

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->B(Landroid/content/Context;)V

    sget-object p1, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p2, Lso/y;->v:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    if-ge p3, v0, :cond_0

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p2, Lso/y;->v:Landroid/widget/Space;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private final A(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 6

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/postdetail/R$string;->base_net_err:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->m:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeStatu(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeCnt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeStatu(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeCnt(I)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    const-string v2, "dislike_hot_comment"

    goto :goto_2

    :cond_4
    const-string v2, "like_hot_comment"

    :goto_2
    invoke-direct {p0, v2, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->X(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    new-instance p2, Lcom/transsion/postdetail/bean/CommentLikeBody;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/transsion/postdetail/bean/CommentLikeBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->q(Lcom/transsion/postdetail/bean/CommentLikeBody;)V

    :cond_5
    new-instance p2, Lin/b;

    xor-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result p1

    invoke-direct {p2, v0, v1, p1}, Lin/b;-><init>(ZLjava/lang/String;I)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lin/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_6
    return-void
.end method

.method private final B(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->r:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->L()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->C()V

    return-void
.end method

.method private final C()V
    .locals 3

    new-instance v0, Lcom/transsion/baseui/widget/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->J:Lcom/transsion/postdetail/ui/view/VideoProgressDragGestureView;

    invoke-direct {v0, v1, v2}, Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$d;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/f;->s(Lcom/transsion/baseui/widget/f$a;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/transsion/postdetail/ui/view/g;

    invoke-direct {v1}, Lcom/transsion/postdetail/ui/view/g;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final D(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final E()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final F(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p1}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-virtual {p1, v2}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-virtual {p1, v2}, Lcom/transsnet/loginapi/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    const-string v0, "/profile/user_profile"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "userId"

    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v1, "postdetail_video"

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->c(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final G(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lhh/b;->b:Lhh/b$a;

    invoke-virtual {p1}, Lhh/b$a;->a()Lhh/b;

    move-result-object p1

    invoke-virtual {p1}, Lhh/b;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/room/api/IRoomApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IRoomApi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/room/api/IRoomApi;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_3
    :goto_1
    const-string p1, "/room/detail"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    const-string v2, "id"

    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v1, "postdetail_video"

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->m(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private final H(Landroid/view/View;)V
    .locals 14

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lhh/b;->b:Lhh/b$a;

    invoke-virtual {p1}, Lhh/b$a;->a()Lhh/b;

    move-result-object p1

    invoke-virtual {p1}, Lhh/b;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/moviedetailapi/IMovieDetailService;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/IMovieDetailService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/moviedetailapi/IMovieDetailService;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_8

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    :cond_6
    move-object v9, v1

    const/16 v12, 0x180

    const/4 v13, 0x0

    const-string v4, "postdetail_video"

    const-string v5, ""

    const-string v7, "download_subject"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_7

    :cond_7
    :goto_3
    const-string p1, "/movie/detail"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    :goto_4
    const-string v2, "subject_type"

    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v1

    :goto_5
    const-string v2, "id"

    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    move-object v0, v1

    :goto_6
    const-string v2, "ops"

    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :goto_7
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v1, "postdetail_video"

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_8
    return-void
.end method

.method private final I()V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v9, Lcom/transsion/postdetail/ui/view/e;

    invoke-direct {v9, v0}, Lcom/transsion/postdetail/ui/view/e;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v10, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v1, v10}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v5, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v11, "getName(...)"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v6

    invoke-virtual {v6}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v7

    const/4 v8, 0x0

    move-object v6, v15

    invoke-virtual/range {v3 .. v9}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v3

    check-cast v13, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lcom/transsion/postdetail/ui/view/f;

    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/view/f;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {v1, v10}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Luy/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v18, v2

    invoke-virtual/range {v12 .. v18}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final J(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const-string v2, " callback change data fail"

    invoke-static {p0, v2, p1, v1, v0}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final K(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Luy/c;)Lkotlin/Unit;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Luy/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Luy/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    invoke-virtual {p1}, Luy/c;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setHasFavorite(Z)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Luy/c;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p0, p0, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Luy/c;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const-string v2, " callback change data fail"

    invoke-static {p0, v2, p1, v1, v0}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final L()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v8, Lcom/transsion/postdetail/ui/view/h;

    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/view/h;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final M(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setHasLike(Ljava/lang/Boolean;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    move-result p1

    const-wide/16 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const-string v2, " callback change data fail"

    invoke-static {p0, v2, p1, v1, v0}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final N(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->showCommentDialog()V

    return-void
.end method

.method private final O(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2, p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->G(Ljava/lang/String;I)V

    :cond_3
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    const-string v2, "postdetail_video"

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsion/postdetail/helper/a;->p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    :goto_2
    return-void
.end method

.method private final P(J)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->n()Z

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v6, p1, v4

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->t()V

    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->Companion:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;

    invoke-virtual {p1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;->a(Landroid/view/ViewGroup;)Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    move-result-object p1

    new-instance p2, Lcom/transsion/postdetail/ui/view/p;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/p;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    const-string v1, "Trending"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    cmp-long p1, p1, v4

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->u()V

    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->Companion:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;

    invoke-virtual {p1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;->a(Landroid/view/ViewGroup;)Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    move-result-object p1

    new-instance p2, Lcom/transsion/postdetail/ui/view/q;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/q;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    :cond_1
    :goto_0
    return-void
.end method

.method private static final Q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    :cond_0
    return-void
.end method

.method private static final R(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    :cond_0
    return-void
.end method

.method private final S(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/util/DownloadUtil;->G(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    sget v0, Lcom/transsion/postdetail/R$string;->shorts_click_download:I

    invoke-static {v0}, Lcom/transsion/baseui/util/m;->c(I)V

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v2, "postdetail_video"

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getDownloadManager()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    return-void
.end method

.method private final T(Landroid/view/View;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "share"

    sget-object v2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v3, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v4, "postdetail_video"

    iget-object v5, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/postdetail/helper/a;->A(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    if-nez v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object v4, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    sget-object v5, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    sget-object v6, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_3

    :cond_4
    move-object v7, v3

    :goto_3
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_4

    :cond_5
    move-object v8, v3

    :goto_4
    sget-object v2, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    invoke-virtual {v2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_5

    :cond_6
    move-object v10, v3

    :goto_5
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubjectRate()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_6

    :cond_7
    move-object v11, v3

    :goto_6
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v3

    :cond_8
    move-object/from16 v16, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/postdetail/R$string;->save_video:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v15, "postdetail"

    invoke-virtual/range {v5 .. v17}, Lcom/transsion/share/share/ShareDialogFragment$a;->a(Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v2, :cond_9

    new-instance v3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$e;-><init>(Landroid/view/View;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    :cond_9
    :try_start_0
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    iget-object v4, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-ne v4, v3, :cond_a

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_a
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_b

    :goto_7
    return-void

    :cond_b
    iget-object v3, v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_9
    return-void
.end method

.method private final U()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    const-string v1, "clLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->b()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->c()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    :goto_0
    return-void
.end method

.method private static final V(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method private final W(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 12

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "post_id"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v2, "page_from"

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const-string v3, "module_name"

    const-string v4, "hot_comment"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "is_cache_post"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v1

    :cond_2
    const-string v6, "user_id"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    :cond_3
    move-object v6, v1

    :cond_4
    const-string v7, "group_id"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    :cond_5
    move-object v7, v1

    :cond_6
    const-string v8, "subject_id"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    :cond_7
    move-object v8, v1

    :cond_8
    const-string v9, "subject_type"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "1"

    goto :goto_0

    :cond_9
    const-string v9, "0"

    :goto_0
    const-string v10, "builtin"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    :cond_a
    sget-object v10, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v10

    :cond_b
    const-string v11, "post_media_type"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    move-object v1, p1

    :goto_1
    const-string p1, "ops"

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v1, 0xb

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v11, 0x0

    aput-object v0, v1, v11

    const/4 v0, 0x1

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object v4, v1, v0

    const/4 v0, 0x4

    aput-object v5, v1, v0

    const/4 v0, 0x5

    aput-object v6, v1, v0

    const/4 v0, 0x6

    aput-object v7, v1, v0

    const/4 v0, 0x7

    aput-object v8, v1, v0

    const/16 v0, 0x8

    aput-object v9, v1, v0

    const/16 v0, 0x9

    aput-object v10, v1, v0

    const/16 v0, 0xa

    aput-object p1, v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "postdetail_video"

    invoke-virtual {v0, v1, p1}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final X(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHotComment()Lcom/transsion/moviedetailapi/bean/CommentBean;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    move-object p1, v1

    :cond_1
    const-string v2, "comment_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    const-string v2, "post_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    const-string v2, "ops"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p1

    :cond_5
    :goto_0
    const-string p1, "group_id"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    :cond_6
    sget-object p1, Lcom/transsion/moviedetailapi/bean/MediaType;->TEXT:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object p1

    :cond_7
    const-string p2, "post_media_type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string p2, "page_from"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_1
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "postdetail_video"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final Y(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$saveBuiltInVideo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$saveBuiltInVideo$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final Z(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    return-object p0
.end method

.method private static final a0(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
    .locals 0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    return-object p0
.end method

.method public static final synthetic access$finishAfterReport(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->z(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-object p0
.end method

.method public static final synthetic access$getFragment$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/player/orplayer/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    return-object p0
.end method

.method public static final synthetic access$getPageFrom$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    return-object p0
.end method

.method public static final synthetic access$getScreenWidth$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->N:I

    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getVideoDetailModel$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Lso/y;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w:Z

    return p0
.end method

.method public static final synthetic access$isSeekToFinish$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$onSingleClick(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->U()V

    return-void
.end method

.method public static final synthetic access$saveBuiltInVideo(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Y(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public static final synthetic access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setContentVisibility(Z)V

    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w:Z

    return-void
.end method

.method public static final synthetic access$setLongPressTriggered$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->M:Z

    return-void
.end method

.method public static final synthetic access$setNextSeekTo$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    return-void
.end method

.method public static final synthetic access$updateCommentCount(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e0(J)V

    return-void
.end method

.method public static final synthetic access$updateSaveIconStatus(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    return-void
.end method

.method private static final b0(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/CommentViewModel;
    .locals 0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    return-object p0
.end method

.method private final c0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private final d0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private final e0(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p2, p2, Lso/y;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final f0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v1, "clHotComment"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHotComment()Lcom/transsion/moviedetailapi/bean/CommentBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v3, "nsPostDes"

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->W(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v4, v4, Lso/y;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "getContext(...)"

    if-lez v3, :cond_5

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    const/16 v3, 0x14

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v3, v3, Lso/y;->k:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v5, "ivHotCommentAvatar"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_5
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeCnt()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v5, v6}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->m:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getImageList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v5, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getImageList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/Cover;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, v3

    :cond_9
    :goto_3
    invoke-virtual {v4, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v2, "commentCover"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->g(Landroid/view/View;)V

    :goto_5
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->I:Landroid/view/View;

    new-instance v2, Lcom/transsion/postdetail/ui/view/l;

    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/postdetail/ui/view/l;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v8, Lcom/transsion/postdetail/ui/view/m;

    invoke-direct {v8, v0, p0}, Lcom/transsion/postdetail/ui/view/m;-><init>(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p1, Lin/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string p1, "getName(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void

    :cond_b
    :goto_6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    return-void
.end method

.method private static final g0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->A(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method private final getDownloadManager()Lcom/transsnet/downloader/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->R:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private final getLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->s:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Luy/c;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->K(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Luy/c;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h0(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lin/b;)Lkotlin/Unit;
    .locals 2

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lin/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lin/b;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeStatu(Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lin/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setLikeCnt(I)V

    iget-object p0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p0, p0, Lso/y;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lin/b;->b()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lin/b;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p0, p0, Lso/y;->m:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Lin/b;->c()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->R(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    return-void
.end method

.method private final i0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic j()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final j0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d0(Landroid/view/View;)V

    sget v0, Lcom/transsion/postdetail/R$mipmap;->post_detail_ic_video_download_new:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d0(Landroid/view/View;)V

    sget v2, Lcom/transsion/postdetail/R$drawable;->post_detail_ic_video_downloaded:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    new-instance v2, Lcom/transsion/postdetail/ui/view/n;

    invoke-direct {v2, p0, v0}, Lcom/transsion/postdetail/ui/view/n;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/transsion/postdetail/R$drawable;->post_detail_ic_video_downloading:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c0(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d0(Landroid/view/View;)V

    sget v0, Lcom/transsion/postdetail/R$mipmap;->post_detail_ic_video_download_new:I

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic k(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final k0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    sget-object p2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v1, "postdetail_video"

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->k(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "/download/panel_activity"

    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "extra_page_index"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "extra_target_resource_id"

    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p0, p2, v0, p2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lin/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h0(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lin/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final l0(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p2, p2, Lso/y;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->M(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final m0()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v3, "tvFavorite"

    const-string v4, "ivVideoAvatar"

    const-string v5, "ivDownload"

    const-string v6, "tvShortTvEp"

    const-string v7, "tvTitle"

    const-string v8, "ivShortCover"

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v2

    sget-object v9, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v9

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v9, :cond_b

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->r:Lso/e0;

    invoke-virtual {v2}, Lso/e0;->b()Lcom/noober/background/view/BLLinearLayout;

    move-result-object v2

    const-string v9, "getRoot(...)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/transsion/postdetail/util/t;->a:Lcom/transsion/postdetail/util/t;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getEp()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/postdetail/util/t;->a(Ljava/lang/Integer;)Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTotalEpisode()I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/postdetail/util/t;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v4, v4, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/transsion/postdetail/R$string;->short_tv_play_all:I

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v2, v9, v0

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-static {v2}, Lcom/transsion/baseui/widget/jumpingbeans/a;->a(Landroid/widget/TextView;)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v4, v4, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e(II)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g(Z)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->i(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v0

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f(F)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a()Lcom/transsion/baseui/widget/jumpingbeans/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v9, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateShortTVInfo$1;

    invoke-direct {v9, p0, v5}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateShortTVInfo$1;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "getContext(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, ""

    :cond_6
    invoke-virtual {v0, v2}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lej/f$b;->h(Z)Lej/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_7
    :goto_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v5

    :cond_8
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v1, "0"

    if-nez v5, :cond_9

    new-instance v2, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    invoke-virtual {v2, v4}, Lcom/transsion/moviedetailapi/bean/Subject;->setShortTVFavInfo(Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;)V

    :cond_9
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    move-object v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Lcom/transsion/postdetail/ui/view/o;

    invoke-direct {v2, p0, v0}, Lcom/transsion/postdetail/ui/view/o;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->V(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    return-void
.end method

.method private static final n0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 8

    sget-object v0, Lcom/transsion/postdetail/shorttv/k;->a:Lcom/transsion/postdetail/shorttv/k;

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v7

    :goto_1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v4

    const-string v5, "postdetail_video"

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/shorttv/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v7

    :cond_2
    invoke-virtual {p1, v7}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->d(Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_3
    return-void
.end method

.method public static synthetic o(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->k0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private final o0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setBottomSubjectAndRoomVisibility(ZZ)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setBottomSubjectModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setBottomRoomModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->n0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method private final p0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 14

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$1;

    invoke-direct {v5, p1, p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$1;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$2;

    invoke-direct {v5, p1, p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$updateVideoInfo$2;-><init>(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object v8, Llg/a;->a:Llg/a$a;

    iget-object v9, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set info - firstFrame = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", avatar = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getFirstFrame()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v2, Lej/f;->a:Lej/f$a;

    sget-object v0, Ljn/b;->e:Ljn/b$a;

    invoke-virtual {v0}, Ljn/b$a;->a()I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, ""

    :cond_5
    invoke-virtual {v0, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v3, "ivVideoAvatar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :goto_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v2, "ivSave"

    const-string v3, "nsPostDes"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v4

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto/16 :goto_a

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->g:Lcom/tn/lib/view/expand/ExpandView;

    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v2, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$g;

    invoke-direct {v2, v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$g;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/view/expand/ExpandView;->setExpandListener(Lcom/tn/lib/view/expand/ExpandView$c;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_8
    move-object v2, v1

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_b
    move-object v2, v1

    :goto_4
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    move-object v3, v1

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v5

    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_e

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_e
    :goto_7
    move-object v1, v2

    :cond_f
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_9

    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$h;

    invoke-direct {v8, v5}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$h;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v9, Lcom/transsion/postdetail/ui/view/k;

    move-object v2, v9

    move-object v3, v0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/postdetail/ui/view/k;-><init>(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, v8, v9}, Lcom/transsion/baseui/util/l;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tn/lib/view/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    :goto_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_a
    return-void
.end method

.method public static synthetic q(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q0(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final q0(Lcom/tn/lib/view/expand/ExpandView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Landroid/view/View;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p5

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baseui/util/UrlContent;

    invoke-virtual {v2}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v3

    invoke-virtual {v2}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v4, v2

    if-gt v3, p5, :cond_0

    if-ge v4, p5, :cond_1

    goto :goto_0

    :cond_1
    if-gt v3, p5, :cond_0

    add-int/lit8 v4, v4, 0x1

    if-ge p5, v4, :cond_0

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    const/4 p1, 0x0

    if-eqz v0, :cond_b

    sget-object p2, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p0, p4, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object p0

    move-object v5, p0

    goto :goto_3

    :cond_7
    move-object v5, p1

    :goto_3
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    move-object v6, p0

    goto :goto_6

    :cond_9
    :goto_5
    const-string p0, ""

    goto :goto_4

    :goto_6
    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    move-result-object p1

    :cond_a
    move-object v7, p1

    const-string v4, "post_video_detail"

    move-object v3, p6

    invoke-virtual/range {v0 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->U(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    const-string p2, "/web/web"

    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string p3, "url"

    invoke-virtual {p2, p3, p6}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p3, 0x2

    invoke-static {p2, p0, p1, p3, p1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic r(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g0(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->D(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final setBottomRoomModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->r:Lso/e0;

    iget-object v0, v0, Lso/e0;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "getContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Group;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string v1, ""

    goto :goto_1

    :cond_3
    move-object v1, v2

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object p1

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->r:Lso/e0;

    iget-object v0, v0, Lso/e0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v1, "ivRoomCover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    return-void
.end method

.method private final setBottomSubjectAndRoomVisibility(ZZ)V
    .locals 7

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    const-string v1, "llRoomTag"

    const-string v2, "vSubjectRoomLine"

    const-string v3, "clSubjectContent"

    const-string v4, "getRoot(...)"

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    invoke-virtual {p1}, Lso/e0;->b()Lcom/noober/background/view/BLLinearLayout;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->m:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->f:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    invoke-virtual {p1}, Lso/e0;->b()Lcom/noober/background/view/BLLinearLayout;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->m:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->f:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    invoke-virtual {p1}, Lso/e0;->b()Lcom/noober/background/view/BLLinearLayout;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    move v0, v6

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->m:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->f:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    move v5, v6

    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private final setBottomSubjectModuleData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 11

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->r:Lso/e0;

    iget-object v1, v1, Lso/e0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v3, "ivSubjectCover"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->r:Lso/e0;

    iget-object v0, v0, Lso/e0;->j:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/transsion/moviedetailapi/g;->a(Ljava/lang/Integer;)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v3, v3, Lso/y;->r:Lso/e0;

    iget-object v3, v3, Lso/e0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    const-string v3, "yyyy-MM-dd"

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->r:Lso/e0;

    iget-object v0, v0, Lso/e0;->h:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string p1, ", "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, p1

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->i:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvSubjectGenre"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_b

    move v1, v4

    goto :goto_4

    :cond_b
    move v1, v3

    :goto_4
    const/16 v5, 0x8

    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_5

    :cond_c
    move v1, v5

    :goto_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_d

    goto :goto_6

    :cond_d
    move v4, v3

    :goto_6
    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    move v3, v5

    :goto_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->r:Lso/e0;

    iget-object p1, p1, Lso/e0;->i:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setContentVisibility(Z)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "tvComment"

    const-string v2, "tvShare"

    const-string v3, "tvLike"

    const-string v4, "progressBar"

    const-string v5, "nsPostDes"

    const-string v6, "getRoot(...)"

    const-string v7, "ivVideoAvatar"

    const-string v8, "ivShortCover"

    const-string v9, "ivDownload"

    const-string v10, "tvTitle"

    const-string v11, "tvShortTvEp"

    const-string v12, "clHotComment"

    const-string v13, "ivSave"

    const-string v14, "tvFavorite"

    if-eqz p1, :cond_5

    iget-object v15, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v15

    sget-object v16, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v14

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v14, :cond_2

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v5, v5, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v5, v5, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v5, v5, Lso/y;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v5, v5, Lso/y;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    move-object/from16 v17, v14

    :cond_2
    :goto_0
    iget-object v8, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v8, v8, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v7, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v7, v7, Lso/y;->r:Lso/e0;

    invoke-virtual {v7}, Lso/e0;->b()Lcom/noober/background/view/BLLinearLayout;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v6, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v6, v6, Lso/y;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v5, v5, Lso/y;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljg/c;->k(Landroid/view/View;)V

    :goto_1
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v5, v5, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v4, v4, Lso/y;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v3, v3, Lso/y;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v2, v2, Lso/y;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->y:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    iget-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->z:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v14, v17

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    move-object/from16 v14, v17

    :goto_2
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->k(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_5
    iget-object v15, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v15, v15, Lso/y;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    move-object/from16 v16, v1

    const/4 v1, 0x1

    if-nez v15, :cond_6

    iput-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->y:Z

    iget-object v15, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v15, v15, Lso/y;->d:Lcom/noober/background/view/BLConstraintLayout;

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Ljg/c;->h(Landroid/view/View;)V

    :cond_6
    iget-object v12, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v12, v12, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    iput-boolean v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->z:Z

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    :cond_7
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    sget-object v12, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v12

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v12, :cond_9

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->F:Lcom/noober/background/view/BLTextView;

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->p:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->q:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->r:Lso/e0;

    invoke-virtual {v1}, Lso/e0;->b()Lcom/noober/background/view/BLLinearLayout;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->t:Lcom/transsion/baseui/widget/NestedScrollableHost;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    :goto_4
    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->x:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v2, v16

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljg/c;->h(Landroid/view/View;)V

    :goto_5
    return-void
.end method

.method public static synthetic setData$default(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move/from16 v10, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    const-string v3, ""

    if-eqz v1, :cond_1

    move-object v11, v3

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move-object v12, v3

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    move v13, v2

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v13}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final setLoading(Z)V
    .locals 2

    const-string v0, "progressBar"

    const-string v1, "clLoading"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->e:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->stop()V

    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->E()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic v(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    return-void
.end method

.method private static final w()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private static final x(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->y(Ljava/lang/String;)V

    return-void
.end method

.method private final y(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5c646583

    if-eq v0, v1, :cond_4

    const v1, -0x344d981f    # -2.3384002E7f

    if-eq v0, v1, :cond_2

    const v1, 0x1f58437e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "favorite_add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsnet/downloader/R$string;->short_tv_favorite_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "favorite_fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p1, Lcom/tn/lib/widget/R$string;->failed_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v0, "favorite_cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget p1, Lcom/transsnet/downloader/R$string;->short_tv_favorite_remove_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Luh/b;->a:Luh/b$a;

    invoke-virtual {v0, p1}, Luh/b$a;->d(I)V

    :cond_7
    return-void
.end method

.method private final z(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishAfterReport, position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->C()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final app2Background()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public final getPlayerContainer()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->h:Landroid/widget/FrameLayout;

    const-string v1, "flContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getDownloadManager()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->e(Llj/m0;)V

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sget v3, Lcom/transsion/postdetail/R$id;->tv_like:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O(Landroid/view/View;)V

    goto/16 :goto_13

    :cond_2
    :goto_1
    sget v3, Lcom/transsion/postdetail/R$id;->tv_comment:I

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_1c

    :goto_2
    sget v3, Lcom/transsion/postdetail/R$id;->clHotComment:I

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    goto/16 :goto_12

    :cond_5
    :goto_3
    sget v3, Lcom/transsion/postdetail/R$id;->tv_share:I

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->T(Landroid/view/View;)V

    goto/16 :goto_13

    :cond_7
    :goto_4
    sget v3, Lcom/transsion/postdetail/R$id;->iv_save:I

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S(Landroid/view/View;)V

    goto/16 :goto_13

    :cond_9
    :goto_5
    sget v3, Lcom/transsion/postdetail/R$id;->iv_video_avatar:I

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->F(Landroid/view/View;)V

    goto/16 :goto_13

    :cond_b
    :goto_6
    sget v3, Lcom/transsion/postdetail/R$id;->ev_post_des:I

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_1d

    :goto_7
    sget v3, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    if-nez v2, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H(Landroid/view/View;)V

    goto/16 :goto_13

    :cond_e
    :goto_8
    sget v3, Lcom/transsion/postdetail/R$id;->ll_room_tag:I

    if-nez v2, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->G(Landroid/view/View;)V

    goto/16 :goto_13

    :cond_10
    :goto_9
    sget v3, Lcom/transsion/postdetail/R$id;->tvShortTvEp:I

    const/4 v4, 0x1

    if-nez v2, :cond_11

    goto :goto_c

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_14

    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_12
    move-object v5, v1

    :goto_a
    invoke-virtual {v3, v5}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    sget-object v5, Lls/a;->a:Lls/a;

    invoke-virtual {v5}, Lls/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    const-string v5, "ep"

    invoke-virtual {v3, v5, v4}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_13
    move-object v4, v1

    :goto_b
    const-string v5, "ops"

    invoke-virtual {v3, v5, v4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v2, v1, v4, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto/16 :goto_13

    :cond_14
    :goto_c
    sget v3, Lcom/transsion/postdetail/R$id;->iv_download:I

    if-nez v2, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_18

    :goto_d
    sget v3, Lcom/transsion/postdetail/R$id;->iv_short_cover:I

    if-nez v2, :cond_16

    goto :goto_e

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v3, :cond_18

    :goto_e
    sget v3, Lcom/transsion/postdetail/R$id;->tv_title:I

    if-nez v2, :cond_17

    goto :goto_13

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1d

    :cond_18
    sget-object v2, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Landroidx/fragment/app/FragmentActivity;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_f

    :cond_19
    move-object v9, v1

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/transsion/postdetail/R$id;->iv_download:I

    if-ne v2, v3, :cond_1a

    :goto_10
    move v11, v4

    goto :goto_11

    :cond_1a
    const/4 v4, 0x0

    goto :goto_10

    :goto_11
    iget-object v2, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    :cond_1b
    move-object v12, v1

    const/16 v15, 0x180

    const/16 v16, 0x0

    const-string v7, "postdetail_video"

    const-string v8, ""

    const-string v10, "download_subject"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v5 .. v16}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    goto :goto_13

    :cond_1c
    :goto_12
    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->N(Landroid/view/View;)V

    :cond_1d
    :goto_13
    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const-string p1, "player- onCompletion"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    sget-object v1, Lls/a;->a:Lls/a;

    invoke-virtual {v1}, Lls/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "ep"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v3, "ops"

    invoke-virtual {v0, v3, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->S:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->getDownloadManager()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Q:Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->x(Llj/m0;)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->h()V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->i()V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->j()V

    :cond_0
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 5

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->k(Lcom/transsion/player/orplayer/PlayError;)V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lao/e;->k()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> IPlayerListener --> onPlayError()  errorCode:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "i_media"

    invoke-virtual {v0, p2, p1, v1}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPlayErrorChangePayer(Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->s(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    return-void
.end method

.method public onPlayerReset()V
    .locals 8

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onPlayerReset"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->L:Z

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    invoke-virtual {p0, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    iput-boolean v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v4, :cond_0

    invoke-static {v4, v3, v0, v5}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {v3}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->j()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v4, v4, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "ivCover"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "ivPause"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v3, "seekBar"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->g:Lcom/tn/lib/view/expand/ExpandView;

    invoke-virtual {v0}, Lcom/tn/lib/view/expand/ExpandView;->reset()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->q:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    :cond_2
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->n:Lcom/transsion/player/ui/ORPlayerView;

    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    iput-wide v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->A:J

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 13

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v1

    long-to-int p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v1, v1, Lso/y;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-boolean v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lep/e;->a:Lep/e;

    invoke-virtual {v2, p1}, Lep/e;->c(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1

    :cond_1
    sget-object v2, Lep/c;->a:Lep/c;

    invoke-virtual {v2, p1}, Lep/c;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    move-wide v5, v3

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sget-object v7, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "immvideo seek:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "PostFeedVideo"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_4

    invoke-interface {v0, v5, v6}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_4
    move v0, v1

    :cond_5
    sget-object v2, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {v2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->j()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_6
    move-wide v5, v3

    :goto_3
    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v8, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "player- onPrepare, duration = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", progress = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    cmp-long p1, v5, v3

    if-lez p1, :cond_7

    if-nez v0, :cond_7

    iput-wide v5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->A:J

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->u:Landroid/widget/ProgressBar;

    long-to-int v0, v5

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_7

    invoke-interface {p1, v5, v6}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_7
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-ne p1, v1, :cond_8

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "player- onPrepare\uff0c play~"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j0()V

    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 1

    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->w:Z

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/b;->l(J)V

    :cond_2
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p3, p3, Lso/y;->u:Landroid/widget/ProgressBar;

    long-to-int v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p3, p3, Lso/y;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->P(J)V

    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onRenderFirstFrame"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivCover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->m()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onSetDataSource()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->L:Z

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->p()V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object p2, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->j()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x:Z

    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->v:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/transsion/postdetail/ui/view/d;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/d;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    goto :goto_0

    :cond_5
    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->x:Z

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onPause"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_6
    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "immvideo savePlayProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O:Z

    if-eqz p1, :cond_7

    sget-object p1, Lep/e;->a:Lep/e;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lep/e;->e(Ljava/lang/String;J)V

    goto :goto_0

    :cond_7
    sget-object p1, Lep/c;->a:Lep/c;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object v0, v0, Lso/y;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lep/c;->c(Ljava/lang/String;J)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->r:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivPause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->u:Landroid/widget/ProgressBar;

    const-string v0, "progressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->n()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoStart"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->o()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivPause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->w:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->setLoading(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->p:Lcom/transsion/room/api/IAudioApi;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/room/api/IAudioApi;->pause()V

    :cond_1
    return-void
.end method

.method public final setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentId"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/postdetail/layer/b;

    invoke-direct {v0}, Lcom/transsion/postdetail/layer/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    invoke-virtual {v0, p5}, Lcom/transsion/postdetail/layer/b;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p6}, Lcom/transsion/postdetail/layer/b;->r(Ljava/lang/String;)V

    :cond_0
    iget-object p6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p6, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p6, v0, p1}, Lcom/transsion/postdetail/layer/b;->x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_2
    iget-object p6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p6, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p6, v0}, Lcom/transsion/postdetail/layer/b;->y(I)V

    :cond_4
    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    iput-boolean p7, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->K:Z

    iput-object p8, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->O:Z

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    new-instance p3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$1;

    invoke-direct {p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class p4, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p4

    new-instance p5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$2;

    invoke-direct {p5, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance p6, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$3;

    invoke-direct {p6, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {p2, p4, p5, p6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->Z(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    new-instance p3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$4;

    invoke-direct {p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class p4, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p4

    new-instance p5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$5;

    invoke-direct {p5, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance p6, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$6;

    invoke-direct {p6, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {p2, p4, p5, p6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a0(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    new-instance p3, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$7;

    invoke-direct {p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$7;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class p4, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p4

    new-instance p5, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$8;

    invoke-direct {p5, p3}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$8;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance p6, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$9;

    invoke-direct {p6, p3, p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$setData$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {p2, p4, p5, p6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b0(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->p0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->i0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p2

    const-wide/16 p3, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    goto :goto_1

    :cond_5
    move-wide p5, p3

    :goto_1
    invoke-direct {p0, p5, p6}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->e0(J)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Stat;->getShareCount()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_6
    invoke-direct {p0, p3, p4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l0(J)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->f0(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    if-eqz p7, :cond_7

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->b:Lso/y;

    iget-object p1, p1, Lso/y;->v:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz p2, :cond_7

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_7
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m0()V

    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 11

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "seek OnSeekComplete\uff0cnextSeekTo:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    invoke-interface {v0, v4, v5}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->J:J

    :cond_1
    return-void
.end method

.method public final setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "pagerLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->o:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    return-void
.end method

.method public final setPlayer(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 1

    const-string v0, "orPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orPlayerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->m:Lcom/transsion/player/orplayer/g;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->n:Lcom/transsion/player/ui/ORPlayerView;

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/b;->v(Lcom/transsion/player/orplayer/g;)V

    :cond_0
    return-void
.end method

.method public final setPosition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showCommentDialog()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;->m:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->l:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v4, "postdetail_video"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;->b(Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->u:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    if-eqz v1, :cond_0

    const-string v2, "immComment"

    invoke-virtual {v1, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->u:Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$f;-><init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;->A0(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V

    :cond_1
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->g:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const-string v2, "postdetail_video"

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/postdetail/helper/a;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final videoStartPrepare(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->H:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->t(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->g()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/transsion/postdetail/layer/b;->a(II)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->t:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->j:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->w(Ljava/lang/Integer;)V

    :cond_3
    return-void
.end method
