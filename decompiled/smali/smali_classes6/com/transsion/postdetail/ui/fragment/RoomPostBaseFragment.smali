.class public abstract Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;
.super Lcom/transsion/baseui/fragment/LazyFragment;

# interfaces
.implements Lep/b;
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/LazyFragment<",
        "Lso/s;",
        ">;",
        "Lep/b;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J\u001f\u0010\u0010\u001a\u00020\u00072\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0006J#\u0010\u001c\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u0017\u0010!\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0019\u0010$\u001a\u00020\u00072\u0008\u0010#\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0006J\u000f\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0006J\u000f\u0010+\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0006J\u0017\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00102\u001a\u00020\u00072\u0008\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00084\u0010\u0006J\u000f\u00105\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u00089\u00108J\u000f\u0010:\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008:\u00106J\u0015\u0010=\u001a\u00020\u00072\u0006\u0010<\u001a\u00020;\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0006J\u000f\u0010@\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0006J\u000f\u0010A\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008A\u0010\u0006J\u001f\u0010D\u001a\u00020\u00072\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010BH\u0016\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010H\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u0017\u0010J\u001a\u00020\u00072\u0006\u0010G\u001a\u00020FH\u0016\u00a2\u0006\u0004\u0008J\u0010IJ1\u0010Q\u001a\u00020\u00072\u0006\u0010L\u001a\u00020K2\u0010\u0010N\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000e0M2\u0006\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ\u0011\u0010T\u001a\u0004\u0018\u00010SH\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\u000f\u0010V\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008V\u0010\u0006J\u000f\u0010W\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008W\u0010\u0006J\u0017\u0010Y\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u000f\u0010[\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008[\u0010\u0006J\u000f\u0010]\u001a\u00020\\H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010a\u001a\u00020\u00072\u0008\u0010`\u001a\u0004\u0018\u00010_H\u0016\u00a2\u0006\u0004\u0008a\u0010bJ!\u0010d\u001a\u00020\u00072\u0006\u0010c\u001a\u00020K2\u0008\u0010`\u001a\u0004\u0018\u00010_H\u0016\u00a2\u0006\u0004\u0008d\u0010eJ\u000f\u0010f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008f\u0010\u0006J\u0019\u0010h\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008h\u0010\u0015J\u0019\u0010i\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008i\u0010\u0015J\u0019\u0010j\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008j\u0010\u0015J\u000f\u0010l\u001a\u00020kH&\u00a2\u0006\u0004\u0008l\u0010mJ\u0019\u0010n\u001a\u00020\u00072\u0008\u0010g\u001a\u0004\u0018\u00010\u0012H&\u00a2\u0006\u0004\u0008n\u0010\u0015J\u000f\u0010o\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008o\u00106J#\u0010r\u001a\u00020\u00072\u0008\u0008\u0002\u0010p\u001a\u00020\u001a2\u0008\u0008\u0002\u0010q\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008r\u0010sJ\u000f\u0010t\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008t\u00106J\u000f\u0010u\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008u\u00106J\u000f\u0010v\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008v\u00108J\u000f\u0010w\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008w\u00108J\u000f\u0010x\u001a\u00020KH&\u00a2\u0006\u0004\u0008x\u0010yJ\u000f\u0010z\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008z\u00108R\u0014\u0010{\u001a\u00020\u000e8\u0002X\u0083D\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u001a\u0010}\u001a\u00020\u000e8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008}\u0010|\u001a\u0004\u0008~\u00106R+\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R,\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0006\u0008\u008b\u0001\u0010\u008c\u0001R,\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\"\u0006\u0008\u0092\u0001\u0010\u0093\u0001R,\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001\"\u0006\u0008\u0099\u0001\u0010\u009a\u0001R(\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u009b\u0001\u0010|\u001a\u0005\u0008\u009c\u0001\u00106\"\u0005\u0008\u009d\u0001\u0010%R\u001e\u0010\u009e\u0001\u001a\u00020K8\u0004X\u0084D\u00a2\u0006\u000f\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001\u001a\u0005\u0008\u00a0\u0001\u0010yR(\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a1\u0001\u0010|\u001a\u0005\u0008\u00a2\u0001\u00106\"\u0005\u0008\u00a3\u0001\u0010%R(\u0010\u00a4\u0001\u001a\u00020K8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00a4\u0001\u0010\u009f\u0001\u001a\u0005\u0008\u00a5\u0001\u0010y\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001c\u0010\u00a9\u0001\u001a\u0005\u0018\u00010\u00a8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u00ab\u0001R\u001c\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u00ac\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R(\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00af\u0001\u0010|\u001a\u0005\u0008\u00b0\u0001\u00106\"\u0005\u0008\u00b1\u0001\u0010%R(\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u000e8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00b2\u0001\u0010|\u001a\u0005\u0008\u00b3\u0001\u00106\"\u0005\u0008\u00b4\u0001\u0010%R!\u0010\u00b5\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R,\u0010\u00b8\u0001\u001a\u0005\u0018\u00010\u00b7\u00018\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001\u001a\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001\"\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001R\u001c\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00be\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R\u001b\u0010\u00c1\u0001\u001a\u0004\u0018\u00010S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R!\u0010\u00c8\u0001\u001a\u00030\u00c3\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001\u001a\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R#\u0010\u00cd\u0001\u001a\u0005\u0018\u00010\u00c9\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ca\u0001\u0010\u00c5\u0001\u001a\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R2\u0010\u00d3\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u000e0\u00ce\u0001j\t\u0012\u0004\u0012\u00020\u000e`\u00cf\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d0\u0001\u0010\u00c5\u0001\u001a\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001R\u0019\u0010\u00d4\u0001\u001a\u00020K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u009f\u0001R\u0019\u0010\u00d5\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001\u00a8\u0006\u00d7\u0001"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;",
        "Lcom/transsion/baseui/fragment/LazyFragment;",
        "Lso/s;",
        "Lep/b;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "observePublish",
        "initExposureHelper",
        "observeComment",
        "observeDelete",
        "observeLike",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "",
        "data",
        "updateDeletePost",
        "(Lcom/tn/lib/net/bean/BaseDto;)V",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "postItem",
        "onLikeClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "onCommentClick",
        "onDownloadClick",
        "requestPermission",
        "showSettingDialog",
        "",
        "navigateToComment",
        "openPostDetail",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V",
        "onShareClick",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "download",
        "saveBuiltInVideo",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "id",
        "removePost",
        "(Ljava/lang/String;)V",
        "localLogPause",
        "",
        "getPostExposurePercent",
        "()F",
        "initFeedVideo",
        "checkShowRefreshPopGuide",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lso/s;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "lazyLoadData",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "isShowPageStateLayoutTitle",
        "()Z",
        "isAudioShowNoNetworkLayout",
        "getEmptyDescText",
        "Lak/q;",
        "listener",
        "setOnNumNotExposureListener",
        "(Lak/q;)V",
        "initViewData",
        "initListener",
        "retryLoadData",
        "Lkotlin/Function0;",
        "resultCallback",
        "doRefresh",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "Landroid/view/View;",
        "getLoadingView",
        "()Landroid/view/View;",
        "onResume",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onDestroy",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
        "bean",
        "updateData",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V",
        "position",
        "updateRoomCacheData",
        "(ILcom/transsion/moviedetailapi/bean/PostSubjectBean;)V",
        "checkToShowEmptyView",
        "item",
        "openSubjectDetail",
        "openRoomDetail",
        "openUserCenter",
        "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "postAdapterFrom",
        "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "onItemHeaderClick",
        "onItemHeaderModuleName",
        "isFirstLoad",
        "isRefresh",
        "loadData",
        "(ZZ)V",
        "pageName",
        "subpageName",
        "isSwipeRefreshEnable",
        "isNeedInsertPublishPost",
        "tabIndex",
        "()I",
        "isStaggeredPost",
        "KEY_POST_EXPOSURE_PERCENT",
        "Ljava/lang/String;",
        "TAG",
        "getTAG",
        "Lcom/transsion/postdetail/ui/adapter/i;",
        "mAdapter",
        "Lcom/transsion/postdetail/ui/adapter/i;",
        "getMAdapter",
        "()Lcom/transsion/postdetail/ui/adapter/i;",
        "setMAdapter",
        "(Lcom/transsion/postdetail/ui/adapter/i;)V",
        "Lsj/b;",
        "mExposureHelper",
        "Lsj/b;",
        "getMExposureHelper",
        "()Lsj/b;",
        "setMExposureHelper",
        "(Lsj/b;)V",
        "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
        "mViewModel",
        "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
        "getMViewModel",
        "()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
        "setMViewModel",
        "(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "mDetailViewModel",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "getMDetailViewModel",
        "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "setMDetailViewModel",
        "(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)V",
        "mPageFrom",
        "getMPageFrom",
        "setMPageFrom",
        "preLoadNum",
        "I",
        "getPreLoadNum",
        "mPage",
        "getMPage",
        "setMPage",
        "mPerPage",
        "getMPerPage",
        "setMPerPage",
        "(I)V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "mSubject",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "Lcom/transsion/moviedetailapi/bean/Group;",
        "mGroup",
        "Lcom/transsion/moviedetailapi/bean/Group;",
        "mGroupId",
        "getMGroupId",
        "setMGroupId",
        "mParentTypeName",
        "getMParentTypeName",
        "setMParentTypeName",
        "mRefreshResultCallback",
        "Lkotlin/jvm/functions/Function0;",
        "Lcom/transsion/moviedetailapi/bean/RoomTabItem;",
        "mTopTab",
        "Lcom/transsion/moviedetailapi/bean/RoomTabItem;",
        "getMTopTab",
        "()Lcom/transsion/moviedetailapi/bean/RoomTabItem;",
        "setMTopTab",
        "(Lcom/transsion/moviedetailapi/bean/RoomTabItem;)V",
        "Ldp/a;",
        "mFeedVideoManager",
        "Ldp/a;",
        "mLoadingView",
        "Landroid/view/View;",
        "Landroid/os/Handler;",
        "mHandler$delegate",
        "Lkotlin/Lazy;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "mHandler",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi$delegate",
        "getMLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "mExposureList$delegate",
        "getMExposureList",
        "()Ljava/util/HashSet;",
        "mExposureList",
        "mExposureCount",
        "mRefreshShown",
        "Z",
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
.field private final KEY_POST_EXPOSURE_PERCENT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

.field private mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

.field private mExposureCount:I

.field private mExposureHelper:Lsj/b;

.field private final mExposureList$delegate:Lkotlin/Lazy;

.field private mFeedVideoManager:Ldp/a;

.field private mGroup:Lcom/transsion/moviedetailapi/bean/Group;

.field private mGroupId:Ljava/lang/String;

.field private final mHandler$delegate:Lkotlin/Lazy;

.field private mLoadingView:Landroid/view/View;

.field private final mLoginApi$delegate:Lkotlin/Lazy;

.field private mPage:Ljava/lang/String;

.field private mPageFrom:Ljava/lang/String;

.field private mParentTypeName:Ljava/lang/String;

.field private mPerPage:I

.field private mRefreshResultCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshShown:Z

.field private mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

.field private mTopTab:Lcom/transsion/moviedetailapi/bean/RoomTabItem;

.field private mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

.field private postItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private final preLoadNum:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;-><init>()V

    const-string v0, "sa_post_exposure_percent"

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->KEY_POST_EXPOSURE_PERCENT:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->preLoadNum:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPerPage:I

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/z3;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/z3;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mHandler$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/a4;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/a4;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/b4;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/b4;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$11(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$4$lambda$3(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    return-void
.end method

.method public static final synthetic access$checkShowRefreshPopGuide(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkShowRefreshPopGuide()V

    return-void
.end method

.method public static final synthetic access$getMExposureList(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Ljava/util/HashSet;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMExposureList()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removePost(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->removePost(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$saveBuiltInVideo(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->saveBuiltInVideo(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method private final checkShowRefreshPopGuide()V
    .locals 11

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mParentTypeName:Ljava/lang/String;

    const-string v1, "BOTTOM_TAB"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshShown:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureCount:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ROOM_POST_REFRESH_GUIDE"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshShown:Z

    if-nez v2, :cond_3

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "--ShowRefreshPopGuide"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Laq/f;

    invoke-direct {v0}, Laq/f;-><init>()V

    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v1

    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v2, Laq/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_3
    return-void
.end method

.method private final getMExposureList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method private final getMHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final getPostExposurePercent()F
    .locals 5

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->KEY_POST_EXPOSURE_PERCENT:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lsm/f;->d(Lsm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method private final initExposureHelper()V
    .locals 8

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getPostExposurePercent()F

    move-result v1

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initExposureHelper, postExposurePercent:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "PostList"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v6, Lsj/b;

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lsj/b;->n(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    iput-object v6, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lsj/b;

    return-void
.end method

.method private final initFeedVideo()V
    .locals 8

    sget-object v0, Ldp/a;->h1:Ldp/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lso/s;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v7, v2, Lvl/b;

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Ldp/a$a;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/i;Ljava/lang/String;Ljava/lang/String;Z)Ldp/a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    return-void
.end method

.method private static final initViewData$lambda$12$lambda$11(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 10

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-object v8, p1

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/postdetail/R$id;->fl_cover:I

    if-eq p1, p2, :cond_f

    sget p2, Lcom/transsion/postdetail/R$id;->tv_room_name:I

    if-eq p1, p2, :cond_f

    sget p2, Lcom/transsion/postdetail/R$id;->iv_user_avatar:I

    if-eq p1, p2, :cond_f

    sget p2, Lcom/transsion/postdetail/R$id;->tv_user_name:I

    if-eq p1, p2, :cond_f

    sget p2, Lcom/transsion/postdetail/R$id;->tv_post_date:I

    if-ne p1, p2, :cond_2

    goto/16 :goto_3

    :cond_2
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_like:I

    const-string v0, "like"

    const-string v2, "dislike"

    const/4 v3, 0x0

    if-ne p1, p2, :cond_5

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_3
    if-eqz v3, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onLikeClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto/16 :goto_4

    :cond_5
    sget p2, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    if-ne p1, p2, :cond_8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_6
    if-eqz v3, :cond_7

    move-object v1, v2

    goto :goto_2

    :cond_7
    move-object v1, v0

    :goto_2
    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onLikeClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_4

    :cond_8
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_comment:I

    if-ne p1, p2, :cond_9

    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onCommentClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    const-string v1, "comment"

    goto :goto_4

    :cond_9
    sget p2, Lcom/transsion/postdetail/R$id;->clHotComment:I

    if-ne p1, p2, :cond_a

    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onCommentClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    const-string v1, "hot_comment"

    goto :goto_4

    :cond_a
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_share:I

    if-ne p1, p2, :cond_b

    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onShareClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    const-string v1, "share"

    goto :goto_4

    :cond_b
    sget p2, Lcom/transsion/postdetail/R$id;->v_post_download:I

    if-ne p1, p2, :cond_c

    invoke-direct {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    const-string v1, "download"

    goto :goto_4

    :cond_c
    sget p2, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    if-ne p1, p2, :cond_d

    invoke-virtual {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    const-string v1, "subject"

    goto :goto_4

    :cond_d
    sget p2, Lcom/transsion/postdetail/R$id;->tv_room_tag:I

    if-ne p1, p2, :cond_e

    invoke-virtual {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    const-string v1, "group"

    goto :goto_4

    :cond_e
    sget p2, Lcom/transsion/postdetail/R$id;->refresh_more:I

    if-ne p1, p2, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p2, p1, Laq/d;

    if-eqz p2, :cond_10

    check-cast p1, Laq/d;

    invoke-interface {p1}, Laq/d;->t()V

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {p0, v8}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onItemHeaderClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->onItemHeaderModuleName()Ljava/lang/String;

    move-result-object v1

    :cond_10
    :goto_4
    if-eqz v8, :cond_12

    sget-object v2, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    move-result-object v5

    if-nez v1, :cond_11

    const-string p1, ""

    move-object v7, p1

    goto :goto_5

    :cond_11
    move-object v7, v1

    :goto_5
    iget-object v9, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    move v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/transsion/postdetail/helper/a;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private static final initViewData$lambda$12$lambda$6$lambda$5(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, v0}, Luh/b$a;->d(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isSwipeRefreshEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v0}, Lep/b$a;->a(Lep/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v0, p0, Laq/d;

    if-eqz v0, :cond_3

    check-cast p0, Laq/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Laq/d;->e(Z)V

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewData$lambda$12$lambda$8(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 4

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/u3;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/u3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final initViewData$lambda$12$lambda$8$lambda$7(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr6/f;->v()V

    :cond_0
    return-void
.end method

.method private static final initViewData$lambda$12$lambda$9(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 9

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "item"

    iget-object v8, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    move v5, p3

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/postdetail/helper/a;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openPostDetail$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static final initViewData$lambda$15(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateDeletePost(Lcom/tn/lib/net/bean/BaseDto;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewData$lambda$17(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--Publish get detail result,  id:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez p1, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    const-string v0, "<1m"

    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setDistanceStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n(ILjava/lang/Object;)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/e4;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/e4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewData$lambda$17$lambda$16(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lso/s;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private static final initViewData$lambda$4$lambda$3(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lep/b$a;->a(Lep/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeComment$lambda$23(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$15(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData(ZZ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final localLogPause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lsj/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsj/b;->f()V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateRoomCacheData$lambda$47(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    return-void
.end method

.method private static final mExposureList_delegate$lambda$2()Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private static final mHandler_delegate$lambda$0()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static final mLoginApi_delegate$lambda$1()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$9(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$6$lambda$5(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final observeComment()V
    .locals 7

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/x3;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/x3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsion/user/action/sync/event/CommentEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v1, "getName(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final observeComment$lambda$23(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/user/action/sync/event/CommentEvent;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    :goto_1
    if-ltz v3, :cond_7

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/transsion/user/action/sync/event/CommentEvent;->getStatus()Z

    move-result p1

    const-wide/16 v4, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_3
    const-wide/16 v6, 0x0

    :goto_3
    add-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_4

    :cond_5
    move-wide v6, v4

    :goto_4
    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_5
    invoke-virtual {v2, p1}, Lcom/transsion/moviedetailapi/bean/Stat;->setCommentCount(Ljava/lang/Long;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_6
    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_7
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_6
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :goto_8
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " callback change data fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {p1, p0, v1, v2, v0}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final observeDelete()V
    .locals 7

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/g4;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/g4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Luy/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v1, "getName(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final observeDelete$lambda$25(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Luy/b;)Lkotlin/Unit;
    .locals 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Luy/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const-string v2, " callback change data fail"

    invoke-static {p0, v2, v0, p1, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final observeLike()V
    .locals 7

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/y3;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/y3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v1, "getName(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final observeLike$lambda$29(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 10

    const/4 v0, 0x1

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_1
    if-ltz v5, :cond_7

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setHasLike(Ljava/lang/Boolean;)V

    :cond_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    const-wide/16 v6, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    move v0, v4

    :goto_4
    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_6
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const-string p1, " callback change data fail"

    const/4 v0, 0x2

    invoke-static {p0, p1, v2, v0, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final observePublish()V
    .locals 14

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isNeedInsertPublishPost()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "--observePublish"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v13, Lcom/transsion/postdetail/ui/fragment/d4;

    invoke-direct {v13, p0}, Lcom/transsion/postdetail/ui/fragment/d4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v0, "getName(...)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v11

    const/4 v12, 0x0

    move-object v8, p0

    invoke-virtual/range {v7 .. v13}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final observePublish$lambda$18(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Laq/d;

    if-nez v1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    check-cast v0, Laq/d;

    invoke-interface {v0}, Laq/d;->A()I

    move-result v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->tabIndex()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--publishevent curTab:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fTab:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->tabIndex()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/PublishEvent;->getPostId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->x(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final onCommentClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openPostDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    return-void
.end method

.method private final onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->postItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    :cond_2
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->requestPermission()V

    :goto_0
    return-void
.end method

.method private final onLikeClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1, v0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->Z(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final onShareClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 18

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    move v11, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    sget-object v3, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    sget-object v4, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_5

    :cond_4
    move-object v5, v2

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_6

    :cond_5
    move-object v6, v2

    :goto_6
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    invoke-virtual {v1}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_7

    :cond_6
    move-object v8, v2

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    sget v2, Lcom/transsion/postdetail/R$string;->save_video:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    move-object v15, v2

    const/16 v16, 0x540

    const/16 v17, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v13, "postdetail"

    const/4 v14, 0x0

    invoke-static/range {v3 .. v17}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object v1

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;

    move-object/from16 v3, p0

    invoke-direct {v2, v1, v0, v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$c;-><init>(Lcom/transsion/share/share/ShareDialogFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {v1, v2}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "share"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final openPostDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/postdetailapi/IPostDetailApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetailapi/IPostDetailApi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/postdetailapi/IPostDetailApi;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/transsion/moviedetailapi/bean/MediaType;->VIDEO:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/post/detailVideo"

    goto :goto_1

    :cond_2
    const-string v0, "/post/detail"

    :goto_1
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "page_from"

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "from_comment"

    invoke-virtual {v0, v2, p2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "item_object"

    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "rec_ops"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "item_type"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getItemType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    const-string v2, "media_type"

    invoke-virtual {p2, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "is_build_in"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p1, p2, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method static synthetic openPostDetail$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openPostDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openPostDetail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic p0()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mHandler_delegate$lambda$0()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic q0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$17(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoginApi_delegate$lambda$1()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method private final removePost(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final requestPermission()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    invoke-virtual {v1}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic s0()Ljava/util/HashSet;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureList_delegate$lambda$2()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private final saveBuiltInVideo(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$saveBuiltInVideo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$saveBuiltInVideo$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final showSettingDialog()V
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/ninegridview/R$string;->system_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/transsion/baseui/R$string;->base_app_name:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->permission_deny_down_tip:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/tn/lib/widget/dialog/TRDialog$a;

    invoke-direct {v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->system_settings:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$17$lambda$16(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$8(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    return-void
.end method

.method private static final updateData$lambda$39(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ldp/a;->a()V

    :cond_0
    return-void
.end method

.method private final updateDeletePost(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/4 v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_5

    :cond_5
    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsion/postdetail/R$string;->delete_post_failed:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method private static final updateRoomCacheData$lambda$47(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ldp/a;->a()V

    :cond_0
    return-void
.end method

.method public static synthetic v0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeLike$lambda$29(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Luy/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeDelete$lambda$25(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Luy/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateData$lambda$39(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observePublish$lambda$18(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;Lcom/transsnet/flow/event/sync/event/PublishEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z0(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData$lambda$12$lambda$8$lambda$7(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    return-void
.end method


# virtual methods
.method public checkToShowEmptyView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLocalNoNetworkView(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public doRefresh(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v2, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {v0, v2}, Luh/b$a;->d(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshResultCallback:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_1
    const/4 v0, 0x3

    invoke-static {p0, v1, v1, v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$string;->profile_not_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoadingView:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/postdetail/R$layout;->layout_room_post_loading:I

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getFlStateView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoadingView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mLoadingView:Landroid/view/View;

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Landroid/view/View;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected final getMAdapter()Lcom/transsion/postdetail/ui/adapter/i;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    return-object v0
.end method

.method protected final getMDetailViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    return-object v0
.end method

.method protected final getMExposureHelper()Lsj/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lsj/b;

    return-object v0
.end method

.method protected final getMGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMPageFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMParentTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mParentTypeName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getMPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPerPage:I

    return v0
.end method

.method protected final getMTopTab()Lcom/transsion/moviedetailapi/bean/RoomTabItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mTopTab:Lcom/transsion/moviedetailapi/bean/RoomTabItem;

    return-object v0
.end method

.method protected final getMViewModel()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    return-object v0
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected final getPreLoadNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->preLoadNum:I

    return v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lso/s;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lso/s;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lso/s;->c(Landroid/view/LayoutInflater;)Lso/s;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initListener()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeComment()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeDelete()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observeLike()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->observePublish()V

    return-void
.end method

.method public initViewData()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initExposureHelper()V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isSwipeRefreshEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/s;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->bg_01:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->main_gradient_center:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/tn/lib/widget/R$color;->main_gradient_start:I

    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/h4;

    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/h4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {v1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/s;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/transsion/postdetail/ui/adapter/i;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v3, "requireContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->postAdapterFrom()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lsj/b;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v3

    const-string v9, "getViewLifecycleOwner(...)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/transsion/postdetail/ui/adapter/i;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;Lsj/b;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lr6/f;->z(Z)V

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v3

    invoke-virtual {v3, v4}, Lr6/f;->y(Z)V

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v3

    iget v5, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->preLoadNum:I

    invoke-virtual {v3, v5}, Lr6/f;->E(I)V

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v3

    new-instance v5, Lcom/transsion/postdetail/ui/view/PostListLoadMoreView;

    invoke-direct {v5}, Lcom/transsion/postdetail/ui/view/PostListLoadMoreView;-><init>()V

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/i4;

    invoke-direct {v6, v0}, Lcom/transsion/postdetail/ui/fragment/i4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {v5, v6}, Lcom/transsion/postdetail/ui/view/PostListLoadMoreView;->setOnFailClickCallback(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v5}, Lr6/f;->C(Lq6/a;)V

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v3

    new-instance v5, Lcom/transsion/postdetail/ui/fragment/j4;

    invoke-direct {v5, v0}, Lcom/transsion/postdetail/ui/fragment/j4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {v3, v5}, Lr6/f;->D(Lp6/f;)V

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$b;

    invoke-direct {v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$b;-><init>()V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/k4;

    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/k4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    sget v5, Lcom/transsion/postdetail/R$id;->fl_cover:I

    sget v6, Lcom/transsion/postdetail/R$id;->tv_room_name:I

    sget v7, Lcom/transsion/postdetail/R$id;->tv_post_date:I

    sget v8, Lcom/transsion/postdetail/R$id;->v_post_like:I

    sget v9, Lcom/transsion/postdetail/R$id;->v_post_comment:I

    sget v10, Lcom/transsion/postdetail/R$id;->v_post_share:I

    sget v11, Lcom/transsion/postdetail/R$id;->v_post_download:I

    sget v12, Lcom/transsion/postdetail/R$id;->cl_subject_content:I

    sget v13, Lcom/transsion/postdetail/R$id;->tv_room_tag:I

    sget v14, Lcom/transsion/postdetail/R$id;->clHotComment:I

    sget v15, Lcom/transsion/postdetail/R$id;->tv_staggered_post_like:I

    sget v16, Lcom/transsion/postdetail/R$id;->iv_user_avatar:I

    sget v17, Lcom/transsion/postdetail/R$id;->tv_user_name:I

    sget v18, Lcom/transsion/postdetail/R$id;->refresh_more:I

    sget v19, Lcom/transsion/postdetail/R$id;->ivNegativeFeedback:I

    filled-new-array/range {v5 .. v19}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/l4;

    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/l4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lp6/b;)V

    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/s;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isStaggeredPost()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f0(I)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->isStaggeredPost()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lso/s;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v3

    check-cast v3, Lso/s;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lso/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3

    new-instance v5, Lig/g;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v6

    invoke-direct {v5, v6, v4}, Lig/g;-><init>(IZ)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_3
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->C()Landroidx/lifecycle/b0;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/v3;

    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/v3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;

    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_5
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/w3;

    invoke-direct {v3, v0}, Lcom/transsion/postdetail/ui/fragment/w3;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;

    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_6
    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLocalNoNetworkView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isNeedInsertPublishPost()Z
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isStaggeredPost()Z
.end method

.method public abstract isSwipeRefreshEnable()Z
.end method

.method public lazyLoadData()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/postdetail/util/g;->a:Lcom/transsion/postdetail/util/g;

    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/util/g;->d(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initFeedVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract loadData(ZZ)V
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/v0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    new-instance p1, Landroidx/lifecycle/v0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1}, Lhj/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "subpage_name"

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldp/a;->onPageDestroy()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/LazyFragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->localLogPause()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ldp/a;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ldp/a;->c()V

    :cond_1
    :goto_0
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public abstract onItemHeaderClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
.end method

.method public abstract onItemHeaderModuleName()Ljava/lang/String;
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->localLogPause()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldp/a;->b()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    sget-object p2, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    invoke-virtual {p2}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    move-result p2

    if-ne p1, p2, :cond_1

    array-length p1, p3

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->postItem:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/util/PostSaveHelper;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->showSettingDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/LazyFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mFeedVideoManager:Ldp/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldp/a;->c()V

    :cond_0
    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->removePost(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    :cond_1
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/ninegridview/helper/b;->a:Lcom/transsion/ninegridview/helper/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x65

    invoke-virtual {p1, v0, v1}, Lcom/transsion/ninegridview/helper/b;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "/room/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "/movie/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    :goto_0
    const-string v2, "subject_type"

    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "ops"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {v0}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    const-string p1, "/profile/user_profile"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v1, "userId"

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract pageName()Ljava/lang/String;
.end method

.method public abstract postAdapterFrom()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;
.end method

.method public retryLoadData()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    :cond_3
    invoke-static {p0, v3, v0, v2, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->loadData$default(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;ZZILjava/lang/Object;)V

    return-void
.end method

.method protected final setMAdapter(Lcom/transsion/postdetail/ui/adapter/i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    return-void
.end method

.method protected final setMDetailViewModel(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mDetailViewModel:Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    return-void
.end method

.method protected final setMExposureHelper(Lsj/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lsj/b;

    return-void
.end method

.method protected final setMGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method protected final setMPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    return-void
.end method

.method protected final setMPageFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPageFrom:Ljava/lang/String;

    return-void
.end method

.method protected final setMParentTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mParentTypeName:Ljava/lang/String;

    return-void
.end method

.method protected final setMPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPerPage:I

    return-void
.end method

.method protected final setMTopTab(Lcom/transsion/moviedetailapi/bean/RoomTabItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mTopTab:Lcom/transsion/moviedetailapi/bean/RoomTabItem;

    return-void
.end method

.method protected final setMViewModel(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mViewModel:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    return-void
.end method

.method public final setOnNumNotExposureListener(Lak/q;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mExposureHelper:Lsj/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lsj/b;->p(Lak/q;)V

    :cond_0
    return-void
.end method

.method public abstract subpageName()Ljava/lang/String;
.end method

.method public abstract tabIndex()I
.end method

.method public updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    const-string v1, "ops"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/transsion/baseui/fragment/PageStatusFragment;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.transsion.baseui.fragment.PageStatusFragment<*>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/transsion/baseui/fragment/PageStatusFragment;

    invoke-virtual {v3}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshResultCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    const/4 v3, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_21

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    instance-of v5, v4, Laq/d;

    if-eqz v5, :cond_8

    check-cast v4, Laq/d;

    invoke-interface {v4}, Laq/d;->O()V

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4, v2}, Lhj/b;->k(Z)V

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_a
    move-object v4, v3

    :goto_1
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    :cond_c
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->isRefresh()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_d
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lso/s;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/c4;

    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ui/fragment/c4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1d

    instance-of v5, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    if-eqz v5, :cond_12

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v8

    if-nez v8, :cond_10

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_10
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_11
    move-object v4, v5

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_3

    :cond_13
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v7, :cond_14

    invoke-virtual {v6, v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_14
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    if-eqz v7, :cond_15

    invoke-virtual {v6, v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setGroup(Lcom/transsion/moviedetailapi/bean/Group;)V

    :cond_15
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_16
    move-object v6, v4

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v8, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v8, :cond_18

    invoke-virtual {v7, v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_18
    iget-object v8, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    if-eqz v8, :cond_17

    invoke-virtual {v7, v8}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setGroup(Lcom/transsion/moviedetailapi/bean/Group;)V

    goto :goto_4

    :cond_19
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-static {v4, v1, v2, v3}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    goto :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_1d
    :goto_5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lr6/f;->r()Z

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lr6/f;->s()V

    :cond_1e
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_6

    :cond_1f
    move p1, v1

    :goto_6
    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-static {p1, v1, v2, v3}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_20
    return-void

    :cond_21
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    goto/16 :goto_c

    :cond_22
    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lr6/f;->r()Z

    move-result v4

    if-ne v4, v2, :cond_23

    move v4, v2

    goto :goto_8

    :cond_23
    move v4, v1

    :goto_8
    if-eqz v4, :cond_29

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCache()Z

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    goto :goto_9

    :cond_24
    move v0, v1

    :goto_9
    if-eqz v0, :cond_25

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lr6/f;->s()V

    goto :goto_c

    :cond_25
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v0

    goto :goto_a

    :cond_26
    move-object v0, v3

    :goto_a
    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_b

    :cond_27
    move p1, v1

    :goto_b
    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-static {p1, v1, v2, v3}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    goto :goto_c

    :cond_28
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lr6/f;->v()V

    :cond_29
    :goto_c
    return-void
.end method

.method public updateRoomCacheData(ILcom/transsion/moviedetailapi/bean/PostSubjectBean;)V
    .locals 9

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lhj/b;->k(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mRefreshResultCallback:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/s;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lso/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    const/4 v3, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_18

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    move-object v4, v3

    :goto_0
    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mPage:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mSubject:Lcom/transsion/moviedetailapi/bean/Subject;

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mGroup:Lcom/transsion/moviedetailapi/bean/Group;

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->isRefresh()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lso/s;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lso/s;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_14

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/f4;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/f4;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_14

    instance-of v5, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    if-eqz v5, :cond_e

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v8

    if-nez v8, :cond_c

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListStart()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isRoomCacheListEnd()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_c
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    move-object v4, v5

    :cond_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {p1, v2, v1, v3}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    goto :goto_4

    :cond_10
    add-int/lit8 v0, p1, 0x1

    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v5

    goto :goto_2

    :cond_11
    move v5, v2

    :goto_2
    if-ge v0, v5, :cond_12

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_14

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p1, v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->o(ILjava/util/Collection;)V

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_14

    if-ltz p1, :cond_13

    goto :goto_3

    :cond_13
    move p1, v2

    :goto_3
    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, p1, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->o(ILjava/util/Collection;)V

    :cond_14
    :goto_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lr6/f;->r()Z

    move-result p1

    if-ne p1, v1, :cond_15

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lr6/f;->s()V

    :cond_15
    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_5

    :cond_16
    move p1, v2

    :goto_5
    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1, v2, v1, v3}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    :cond_17
    return-void

    :cond_18
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->checkToShowEmptyView()V

    goto :goto_9

    :cond_19
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lr6/f;->r()Z

    move-result p1

    if-ne p1, v1, :cond_1a

    move p1, v1

    goto :goto_7

    :cond_1a
    move p1, v2

    :goto_7
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_8

    :cond_1b
    move p1, v2

    :goto_8
    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-static {p1, v2, v1, v3}, Lr6/f;->u(Lr6/f;ZILjava/lang/Object;)V

    goto :goto_9

    :cond_1c
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->mAdapter:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lr6/f;->v()V

    :cond_1d
    :goto_9
    return-void
.end method
