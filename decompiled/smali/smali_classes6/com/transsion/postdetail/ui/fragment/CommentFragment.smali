.class public final Lcom/transsion/postdetail/ui/fragment/CommentFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;

# interfaces
.implements Lcom/transsion/postdetail/comment/i0;
.implements Lcom/transsion/postdetail/comment/g0;
.implements Lep/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;,
        Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lso/j;",
        ">;",
        "Lcom/transsion/postdetail/comment/i0;",
        "Lcom/transsion/postdetail/comment/g0;",
        "Lep/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00ec\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002x{B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u000f\u0010\n\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0007J\u000f\u0010\u000c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u0019\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0007J\u000f\u0010\u0015\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0007J\u0019\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0007J#\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0007J\u0019\u0010!\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0013J\'\u0010&\u001a\u00020\u00082\u0016\u0010%\u001a\u0012\u0012\u0004\u0012\u00020#0\"j\u0008\u0012\u0004\u0012\u00020#`$H\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010)\u001a\u00020(H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008+\u0010\u0007J#\u0010-\u001a\u00020\u00082\u0006\u0010,\u001a\u00020\u00102\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00101\u001a\u00020\u00082\u0006\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u00081\u00102JO\u00109\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u001026\u00108\u001a2\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(7\u0012\u0004\u0012\u00020\u000804H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u0019\u0010=\u001a\u00020\u00082\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u0017\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020?H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ!\u0010E\u001a\u00020\u00082\u0006\u0010D\u001a\u00020C2\u0008\u0010<\u001a\u0004\u0018\u00010;H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010G\u001a\u00020\u00082\u0008\u0010D\u001a\u0004\u0018\u00010CH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008I\u0010*J\u0017\u0010L\u001a\u00020\u00082\u0006\u0010K\u001a\u00020JH\u0016\u00a2\u0006\u0004\u0008L\u0010MJ%\u0010O\u001a\u00020\u00082\u0014\u00108\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u0008\u0018\u00010NH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0007J\u0017\u0010S\u001a\u00020(2\u0008\u0010R\u001a\u0004\u0018\u00010#\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010U\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008U\u0010\u0007J\u000f\u0010V\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008V\u0010\u0007J\u0017\u0010W\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008W\u0010\u0013J#\u0010[\u001a\u00020\u00082\u0008\u0010Y\u001a\u0004\u0018\u00010X2\u0008\u0010Z\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008[\u0010\\J\u000f\u0010]\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008]\u0010\u0007J1\u0010c\u001a\u00020\u00082\u0008\u0010G\u001a\u0004\u0018\u00010^2\u0006\u0010`\u001a\u00020_2\u0006\u0010a\u001a\u00020_2\u0006\u0010b\u001a\u00020_H\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u0019\u0010e\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u0019\u0010g\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008g\u0010fJI\u0010i\u001a\u00020\u00082:\u00108\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0010\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008( \u0012\u0015\u0012\u0013\u0018\u00010(\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(h\u0012\u0004\u0012\u00020\u000804\u00a2\u0006\u0004\u0008i\u0010jJ\u0019\u0010k\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008k\u0010fJ\u0019\u0010l\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#H\u0016\u00a2\u0006\u0004\u0008l\u0010fJ\u001f\u0010o\u001a\u00020\u00082\u0006\u0010n\u001a\u00020m2\u0006\u0010b\u001a\u00020_H\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\u00082\u0008\u0010R\u001a\u0004\u0018\u00010#\u00a2\u0006\u0004\u0008q\u0010fJ\u000f\u0010r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008r\u0010\u0007J\u0017\u0010t\u001a\u00020\u00082\u0006\u0010s\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008t\u0010uJ\u000f\u0010v\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008v\u0010\u0007R\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0016\u0010}\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R,\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001b\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008O\u0010\u008f\u0001R\u001b\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\'\u0010\u009a\u0001\u001a\u0010\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u0008\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u001b\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u0019\u0010\u009f\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009c\u0001R\u0019\u0010\u00a2\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0019\u0010\u00a4\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a1\u0001R\u0019\u0010\u00a7\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R\u0018\u0010\u00a9\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a8\u0001\u0010|R\u0018\u0010\u00ab\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00aa\u0001\u0010|R\u0017\u0010\u00ac\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010|R\u001a\u0010Z\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u0017\u0010\u00af\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010|R\u0019\u0010\u00b1\u0001\u001a\u00020_8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00a1\u0001R\u0019\u0010\u00b3\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00a6\u0001R#\u0010\u00b9\u0001\u001a\u0005\u0018\u00010\u00b4\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R*\u0010\u00be\u0001\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00ba\u0001\u0010\u009c\u0001\u001a\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001\"\u0005\u0008\u00bd\u0001\u0010\u0013R,\u0010\u00c6\u0001\u001a\u0005\u0018\u00010\u00bf\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001\u001a\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001\"\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001R\u001c\u0010\u00ca\u0001\u001a\u0005\u0018\u00010\u00c7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001R\u001d\u0010\u00cd\u0001\u001a\t\u0012\u0004\u0012\u00020\u00100\u00cb\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008g\u0010\u00cc\u0001R\u001a\u0010 \u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u009c\u0001R\u001b\u0010\u00d0\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u009c\u0001R\u001b\u0010\u00d2\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0001\u0010\u009c\u0001R\u001b\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u009c\u0001R\u001a\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008]\u0010\u009c\u0001R\u001b\u0010\u00d7\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d6\u0001\u0010\u009c\u0001R\u001a\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008k\u0010\u009c\u0001R\u001b\u0010\u00da\u0001\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d9\u0001\u0010\u009c\u0001R#\u0010\u00de\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u00dc\u0001\u0018\u00010\u00db\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u00dd\u0001R\u0018\u0010\u00df\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a6\u0001\u0010|R\u001b\u0010\u00e2\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001R\u0019\u0010\u00e4\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e3\u0001\u0010\u00a6\u0001R3\u0010\u00e7\u0001\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e5\u0001\u0010\u00e6\u0001R\u001c\u0010\u00eb\u0001\u001a\u0005\u0018\u00010\u00e8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001\u00a8\u0006\u00ed\u0001"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lso/j;",
        "Lcom/transsion/postdetail/comment/i0;",
        "Lcom/transsion/postdetail/comment/g0;",
        "Lep/a;",
        "<init>",
        "()V",
        "",
        "initAdapter",
        "initExposureHelper",
        "I0",
        "initViewModel",
        "j1",
        "loadData",
        "W0",
        "",
        "txt",
        "S0",
        "(Ljava/lang/String;)V",
        "showEmpty",
        "f1",
        "Lcom/transsion/postdetail/bean/CommentListBean;",
        "data",
        "B0",
        "(Lcom/transsion/postdetail/bean/CommentListBean;)V",
        "F0",
        "postId",
        "a1",
        "(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentListBean;)V",
        "k1",
        "R0",
        "commentId",
        "i1",
        "Ljava/util/ArrayList;",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "Lkotlin/collections/ArrayList;",
        "list",
        "D0",
        "(Ljava/util/ArrayList;)V",
        "",
        "checkLogin",
        "()Z",
        "h1",
        "moduleName",
        "X0",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Lfp/a;",
        "operationMenu",
        "C0",
        "(Lfp/a;)V",
        "path",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "bucket",
        "callback",
        "l1",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "G0",
        "(Landroid/view/LayoutInflater;)Lso/j;",
        "Landroid/view/View;",
        "view",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "s",
        "(Landroid/view/View;)V",
        "q",
        "",
        "commentCount",
        "updateCommentCount",
        "(J)V",
        "Lkotlin/Function1;",
        "f",
        "(Lkotlin/jvm/functions/Function1;)V",
        "lazyLoadData",
        "item",
        "d1",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z",
        "startLoading",
        "hideLoading",
        "E0",
        "Landroid/text/Editable;",
        "text",
        "replyItem",
        "S",
        "(Landroid/text/Editable;Lcom/transsion/moviedetailapi/bean/CommentBean;)V",
        "E",
        "",
        "",
        "start",
        "before",
        "count",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "Q",
        "(Lcom/transsion/moviedetailapi/bean/CommentBean;)V",
        "z",
        "likeStatu",
        "Z0",
        "(Lkotlin/jvm/functions/Function2;)V",
        "G",
        "P",
        "Lqo/a;",
        "info",
        "T",
        "(Lqo/a;I)V",
        "c1",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onDestroyView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "a",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mCommentList",
        "b",
        "Z",
        "mNeedUpdate",
        "Lcom/transsion/postdetail/comment/n;",
        "c",
        "Lcom/transsion/postdetail/comment/n;",
        "mCommentExpandAdapter",
        "Lcom/transsion/postdetail/comment/m;",
        "d",
        "Lcom/transsion/postdetail/comment/m;",
        "getMCommentEditInputViewHelper",
        "()Lcom/transsion/postdetail/comment/m;",
        "setMCommentEditInputViewHelper",
        "(Lcom/transsion/postdetail/comment/m;)V",
        "mCommentEditInputViewHelper",
        "Lcom/transsion/postdetail/util/m;",
        "e",
        "Lcom/transsion/postdetail/util/m;",
        "mSoftKeyBoardListener",
        "Lcom/transsion/postdetail/comment/g;",
        "Lcom/transsion/postdetail/comment/g;",
        "mCommentEditInputDialog",
        "g",
        "Lcom/transsion/postdetail/bean/CommentListBean;",
        "mMsgData",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "h",
        "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
        "mCommentViewModel",
        "i",
        "Lkotlin/jvm/functions/Function1;",
        "loadResultCallback",
        "j",
        "Ljava/lang/String;",
        "topicId",
        "k",
        "topicType",
        "l",
        "I",
        "page",
        "m",
        "mPerPage",
        "n",
        "J",
        "mCommentCount",
        "o",
        "mShowDownload",
        "p",
        "mFromDetail",
        "isNeedCloseInput",
        "r",
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "replyLoading",
        "t",
        "showCommentCount",
        "u",
        "lastCreatedTime",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "v",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "loginApi",
        "w",
        "getImagePath",
        "()Ljava/lang/String;",
        "setImagePath",
        "imagePath",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "x",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "getOnCommentCountChangedListener",
        "()Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "b1",
        "(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V",
        "onCommentCountChangedListener",
        "Lsj/b;",
        "y",
        "Lsj/b;",
        "exposureHelper",
        "",
        "Ljava/util/Set;",
        "exposedCommentIds",
        "A",
        "B",
        "pageFrom",
        "C",
        "trackId",
        "D",
        "previousTrackId",
        "previousPageVideoId",
        "F",
        "ugcVideoId",
        "pageName",
        "H",
        "collectionId",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "Landroidx/activity/result/b;",
        "loginLaunch",
        "isNeedShowLoginActivity",
        "K",
        "Landroid/text/Editable;",
        "mText",
        "L",
        "mPostClickTime",
        "M",
        "Lkotlin/jvm/functions/Function2;",
        "mCommentCallback",
        "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;",
        "N",
        "Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;",
        "mCommentDeleteDialog",
        "O",
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


# static fields
.field public static final O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Landroidx/activity/result/b;

.field private J:Z

.field private K:Landroid/text/Editable;

.field private L:J

.field private M:Lkotlin/jvm/functions/Function2;

.field private N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Z

.field private c:Lcom/transsion/postdetail/comment/n;

.field private d:Lcom/transsion/postdetail/comment/m;

.field private e:Lcom/transsion/postdetail/util/m;

.field private f:Lcom/transsion/postdetail/comment/g;

.field private g:Lcom/transsion/postdetail/bean/CommentListBean;

.field private h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/transsion/moviedetailapi/bean/CommentBean;

.field private s:Z

.field private t:I

.field private u:J

.field private final v:Lkotlin/Lazy;

.field private w:Ljava/lang/String;

.field private x:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

.field private y:Lsj/b;

.field private final z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    sget-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-virtual {v0}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->o:Z

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/a;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->v:Lkotlin/Lazy;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->z:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->X0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final B0(Lcom/transsion/postdetail/bean/CommentListBean;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getPager()Lcom/transsion/postdetail/bean/Pager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/Pager;->getPerPage()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    iput v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v2

    invoke-virtual {v2}, Lr6/f;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v2

    invoke-virtual {v2}, Lr6/f;->s()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getPager()Lcom/transsion/postdetail/bean/Pager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr6/f;->t(Z)V

    :cond_3
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/CommentBean;

    iget v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->t:I

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubCommentCnt()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->t:I

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCreatedAt()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :cond_4
    const-wide/16 v2, 0x0

    :goto_3
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->u:J

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_6

    move v1, v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->showEmpty()V

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F0()V

    :goto_4
    return-void
.end method

.method private final C0(Lfp/a;)V
    .locals 2

    invoke-virtual {p1}, Lfp/a;->h()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->w:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/m;->w(Lcom/transsion/publish/api/PhotoEntity;)V

    :cond_1
    return-void
.end method

.method private final D0(Ljava/util/ArrayList;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v1, :cond_17

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz p1, :cond_17

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_2
    check-cast v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v10, v2

    move v8, v6

    move v9, v8

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-gez v10, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v11, Lcom/transsion/moviedetailapi/bean/CommentBean;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v8, v10

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_8

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v14, v2

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-gez v14, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_5
    check-cast v15, Lcom/transsion/moviedetailapi/bean/CommentBean;

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_6
    move-object v15, v7

    :goto_3
    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    move v8, v10

    move v9, v14

    :cond_7
    move/from16 v14, v16

    goto :goto_2

    :cond_8
    :goto_4
    move v10, v12

    goto :goto_1

    :cond_9
    move v8, v6

    move v9, v8

    :cond_a
    if-ne v8, v6, :cond_b

    if-eq v9, v6, :cond_16

    :cond_b
    if-eq v8, v6, :cond_10

    if-ne v9, v6, :cond_10

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :cond_c
    move-object v3, v7

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v8, :cond_f

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    goto :goto_6

    :cond_d
    move-object v3, v7

    :goto_6
    sget-object v8, Llg/a;->a:Llg/a$a;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    move-result-object v7

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove parentsMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "deleteComment list:"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_f
    sget-object v14, Llg/a;->a:Llg/a$a;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "deleteComment list:"

    const-string v16, "remove parentsMsg: index "

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_a

    :cond_10
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_7

    :cond_11
    move-object v3, v7

    :goto_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v8, :cond_15

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    goto :goto_8

    :cond_12
    move-object v3, v7

    :goto_8
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    goto :goto_9

    :cond_13
    move-object v3, v7

    :goto_9
    sget-object v8, Llg/a;->a:Llg/a$a;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    move-result-object v7

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove childMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "deleteComment list:"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_a

    :cond_15
    sget-object v14, Llg/a;->a:Llg/a$a;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "deleteComment list:"

    const-string v16, "remove childMsg: index "

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_16
    :goto_a
    move v3, v5

    goto/16 :goto_0

    :cond_17
    :goto_b
    return-void
.end method

.method private final F0()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/j;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final H0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->R0()V

    return-void
.end method

.method private final I0()V
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$d;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/BaseFragment;->setNetListener(Lnh/n;)V

    return-void
.end method

.method private static final J0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "loginStatus"

    const-string v3, "\u767b\u5f55\u6210\u529f"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsnet/loginapi/ILoginApi;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "loginStatus"

    const-string v2, "\u767b\u5f55\u5931\u8d25\u6216\u8005\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final K0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lqo/b;)Lkotlin/Unit;
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->hideLoading()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-nez v0, :cond_1

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lqo/b;->b()Lcom/transsion/postdetail/bean/CommentListBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/CommentListBean;->getPager()Lcom/transsion/postdetail/bean/Pager;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/postdetail/bean/CommentListBean;->setPager(Lcom/transsion/postdetail/bean/Pager;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/CommentBean;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lqo/b;->a()Lqo/a;

    move-result-object v4

    invoke-virtual {v4}, Lqo/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lqo/b;->b()Lcom/transsion/postdetail/bean/CommentListBean;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setSubComments(Ljava/util/List;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final L0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/moviedetailapi/bean/CommentBean;)Lkotlin/Unit;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->s:Z

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->f()V

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/transsion/postdetail/R$string;->comment_failed:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    sget-object v2, Luh/b;->a:Luh/b$a;

    sget v3, Lcom/transsion/postdetail/R$string;->comment_success:I

    invoke-virtual {v2, v3}, Luh/b$a;->d(I)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/m;->h()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/m;->u()V

    :cond_3
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/appcompat/app/w;->dismiss()V

    :cond_4
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->r:Lcom/transsion/moviedetailapi/bean/CommentBean;

    const-wide/16 v3, 0x1

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-nez v2, :cond_5

    new-instance v2, Lcom/transsion/postdetail/bean/CommentListBean;

    new-array v3, v0, [Lcom/transsion/moviedetailapi/bean/CommentBean;

    aput-object p1, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v9, Lcom/transsion/postdetail/bean/Pager;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "2"

    const-string v6, "1"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/transsion/postdetail/bean/Pager;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {v2, v1, v9}, Lcom/transsion/postdetail/bean/CommentListBean;-><init>(Ljava/util/List;Lcom/transsion/postdetail/bean/Pager;)V

    iput-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_8

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_7

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-interface {v5, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Lcom/transsion/postdetail/bean/CommentListBean;->setCommentList(Ljava/util/List;)V

    :cond_8
    iget-wide v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_e

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/c;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/c;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_9
    iget-wide v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/CommentBean;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubComments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getSubCommentCnt()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->setSubCommentCnt(I)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    invoke-direct {p0, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_c
    check-cast v3, Ln6/a;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_e

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/d;

    invoke-direct {v3, p0, v1}, Lcom/transsion/postdetail/ui/fragment/d;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_d
    move v1, v4

    goto :goto_1

    :cond_e
    :goto_2
    sget-object v1, Lty/b;->a:Lty/b$a;

    invoke-virtual {v1}, Lty/b$a;->a()Lty/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, ""

    :cond_f
    iget-wide v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, v2, p0}, Lty/b;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final M0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final N0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final O0(Lcom/transsion/postdetail/bean/CommentLikeBean;)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final P0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E0(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/postdetail/bean/CommentListBean;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->hideLoading()V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f1()V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lr6/f;->s()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a1(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentListBean;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B0(Lcom/transsion/postdetail/bean/CommentListBean;)V

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final R0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    const-string v6, ""

    const-string v3, "0"

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final S0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static final T0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final U0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lfp/a;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lfp/a;->e()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C0(Lfp/a;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final V0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bucket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/bean/CommentBody;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/bean/CommentBody;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, p3}, Lcom/transsion/postdetail/bean/CommentBody;->setBucket(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    invoke-virtual {p2, p1, p0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->s(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentBody;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final W0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e:Lcom/transsion/postdetail/util/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/postdetail/util/m;

    invoke-direct {v0}, Lcom/transsion/postdetail/util/m;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e:Lcom/transsion/postdetail/util/m;

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e:Lcom/transsion/postdetail/util/m;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$e;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/util/m;->d(Landroid/app/Activity;Lcom/transsion/postdetail/util/m$a;)V

    :cond_1
    return-void
.end method

.method private final X0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    const-string v2, "post_id"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const-string p1, "comment_id"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string p2, "page_from"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p2, "track_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p2, "parent_track_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p2, "parent_content_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p2, "content_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    if-eqz p1, :cond_8

    const-string p1, "post_detail"

    goto :goto_1

    :cond_8
    const-string p1, "postdetail_video"

    :cond_9
    :goto_1
    sget-object p2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    invoke-virtual {p2, p1, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->X0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/postdetail/bean/CommentListBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/postdetail/bean/CommentListBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final a1(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentListBean;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/moviedetailapi/bean/CommentBean;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/n;->G1()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/CommentListBean;->getCommentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/view/View;)V

    return-void
.end method

.method private final checkLogin()Z
    .locals 4

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I:Landroidx/activity/result/b;

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->J:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I:Landroidx/activity/result/b;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/transsnet/loginapi/ILoginApi;->o(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget v2, Lcom/transsion/postdetail/R$string;->comment_login_title:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic d0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->J0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->M0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    return-void
.end method

.method private static final e1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/content/DialogInterface;)V
    .locals 6

    instance-of v0, p1, Lcom/transsion/postdetail/comment/g;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/postdetail/comment/g;

    invoke-virtual {p1}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/comment/m;->h()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->K:Landroid/text/Editable;

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "CommentFragment"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lqo/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->K0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lqo/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final f1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/postdetail/R$layout;->post_detail_no_comment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Lcom/transsion/postdetail/R$id;->tv_status:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/postdetail/R$string;->base_net_err:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v0, :cond_2

    sget v2, Lcom/transsion/postdetail/R$id;->tv_retry:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    sget v3, Lcom/transsion/postdetail/R$string;->comment_retry:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/h;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/h;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/moviedetailapi/bean/CommentBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->L0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/transsion/moviedetailapi/bean/CommentBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/view/View;)V
    .locals 2

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/transsion/postdetail/R$string;->base_net_err:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->loadData()V

    const-string p1, "retry"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final getLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic h0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lfp/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->U0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lfp/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final h1()V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/f0;->b(J)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->V0(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final i1(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln6/a;

    instance-of v5, v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/transsion/moviedetailapi/bean/CommentBean;

    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v6, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, "toString(...)"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "deleteComment list:"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->b:Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    iget-object v5, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v4

    :goto_2
    const-wide/16 v5, 0x0

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v4

    :cond_6
    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln6/a;

    instance-of v7, v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    if-eqz v7, :cond_8

    check-cast v4, Lcom/transsion/moviedetailapi/bean/CommentBean;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCreatedAt()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_4

    :cond_9
    move-wide v7, v5

    :goto_4
    iput-wide v7, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->u:J

    sget-object v9, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCommentExpandAdapter createdTime:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "deleteComment list:"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_a
    :goto_5
    iput-wide v5, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->u:J

    sget-object v15, Llg/a;->a:Llg/a$a;

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v16, "deleteComment list:"

    const-string v17, "mCommentExpandAdapter null"

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_b
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    iget-wide v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    invoke-direct {v0, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D0(Ljava/util/ArrayList;)V

    :cond_d
    sget-object v2, Lty/b;->a:Lty/b$a;

    invoke-virtual {v2}, Lty/b$a;->a()Lty/b;

    move-result-object v2

    if-nez v1, :cond_e

    const-string v1, ""

    :cond_e
    iget-wide v3, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v1, v3, v4}, Lty/b;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final initAdapter()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/transsion/postdetail/comment/n;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/comment/n;-><init>(Lcom/transsion/postdetail/comment/g0;)V

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lr6/f;->z(Z)V

    invoke-virtual {v2, v3}, Lr6/f;->y(Z)V

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/i;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/i;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {v2, v3}, Lr6/f;->D(Lp6/f;)V

    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/postdetail/comment/u;

    invoke-direct {v1}, Lcom/transsion/postdetail/comment/u;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_3
    return-void
.end method

.method private final initExposureHelper()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lsj/b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "post_detail"

    goto :goto_0

    :cond_1
    const-string v0, "postdetail_video"

    :cond_2
    :goto_0
    new-instance v7, Lsj/b;

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;

    invoke-direct {v3, p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$c;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const v2, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lsj/b;->n(I)V

    iput-object v7, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lsj/b;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_3
    return-void
.end method

.method private final initViewModel()V
    .locals 5

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/k;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/k;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->l()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/l;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/l;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->n()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/m;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/m;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->m()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/n;

    invoke-direct {v3}, Lcom/transsion/postdetail/ui/fragment/n;-><init>()V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v2

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/b;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/b;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/o;

    invoke-direct {v4, v3}, Lcom/transsion/postdetail/ui/fragment/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    return-void
.end method

.method private final j1()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lso/j;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lso/j;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lso/j;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lso/j;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_2

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget v3, Lcom/transsion/postdetail/R$string;->comments:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    invoke-static {v4, v5}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->x:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    invoke-interface {v0, v1, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;->a(J)V

    :cond_3
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->e1(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final k1(Lcom/transsion/postdetail/bean/CommentListBean;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initAdapter()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/n;->K1(Lcom/transsion/postdetail/bean/CommentListBean;)V

    :cond_0
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->P0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final l1(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 3

    sget-object v0, Lcw/c;->a:Lcw/c;

    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/CommentFragment$g;

    invoke-direct {v2, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$g;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Lcw/c;->f(Ljava/lang/String;Lcom/transsion/upload/bean/UploadFileType;ZLcw/a;)V

    return-void
.end method

.method private final loadData()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f1()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->startLoading()V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    iget v4, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->A:Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v7, v2

    goto :goto_0

    :cond_3
    move-object v7, v4

    :goto_0
    const-string v4, "0"

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static synthetic m0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->T0()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/bean/CommentLikeBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O0(Lcom/transsion/postdetail/bean/CommentLikeBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic p0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->z:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Lcom/transsion/postdetail/comment/n;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    return-object p0
.end method

.method private final showEmpty()V
    .locals 3

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
    new-instance v0, Lcom/tn/lib/view/DefaultView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/tn/lib/view/DefaultView$DefaultViewStyle;->STYLE_IMAGE_DES:Lcom/tn/lib/view/DefaultView$DefaultViewStyle;

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setStyle(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V

    sget v1, Lcom/transsion/postdetail/R$string;->comment_empty:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setDescText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/postdetail/R$drawable;->icon_comment_empty:I

    invoke-virtual {v0, v1}, Lcom/tn/lib/view/DefaultView;->setDefaultImage(I)V

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c:Lcom/transsion/postdetail/comment/n;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic t0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic w0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->q:Z

    return p0
.end method

.method public static final synthetic z0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->loadData()V

    return-void
.end method


# virtual methods
.method public E()V
    .locals 5

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
    sget-object v0, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final E0(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "deleteComment"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public G(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->i()Lcom/transsion/moviedetailapi/bean/CommentBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/m;->t()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/m;->v(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    const-string p1, "reply"

    const/4 v0, 0x2

    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public G0(Landroid/view/LayoutInflater;)Lso/j;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lso/j;->c(Landroid/view/LayoutInflater;)Lso/j;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public P(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->c1(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    return-void
.end method

.method public Q(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 4

    const-string v0, "\u8df3\u8f6c\u4e2a\u4eba\u9875\u9762"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getUid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "/profile/user_profile"

    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v2

    const-string v3, "userId"

    invoke-virtual {v2, v3, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_0
    const-string p1, "avatar_comment"

    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/CommentFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public S(Landroid/text/Editable;Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->s:Z

    if-eqz v2, :cond_0

    sget-object v1, Luh/b;->a:Luh/b$a;

    sget v2, Lcom/transsion/postdetail/R$string;->loding:I

    invoke-virtual {v1, v2}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    const-string v2, "main"

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->isSubComment()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "reply_reply"

    goto :goto_0

    :cond_2
    const-string v2, "main_reply"

    goto :goto_0

    :goto_1
    sget-object v3, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    const-string v14, ""

    if-nez v2, :cond_3

    move-object v4, v14

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    if-eqz v2, :cond_5

    const-string v2, "post_detail"

    :cond_4
    :goto_3
    move-object v6, v2

    goto :goto_4

    :cond_5
    const-string v2, "postdetail_video"

    goto :goto_3

    :goto_4
    iget-object v7, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H:Ljava/lang/String;

    const-string v5, "comment_post"

    invoke-virtual/range {v3 .. v13}, Lcom/transsion/postdetail/helper/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->r:Lcom/transsion/moviedetailapi/bean/CommentBean;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->L:J

    const-string v2, "\u53d1\u8868\u8bc4\u8bba"

    invoke-direct {v0, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/g;->h()Lcom/transsion/postdetail/comment/m;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/postdetail/comment/m;->j()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v2, v3

    :goto_5
    if-eqz p1, :cond_7

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_7
    const/4 v4, 0x1

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v4, :cond_9

    sget-object v1, Luh/b;->a:Luh/b$a;

    sget v2, Lcom/transsion/postdetail/R$string;->comment_empty_tips:I

    invoke-virtual {v1, v2}, Luh/b$a;->d(I)V

    return-void

    :cond_9
    sget-object v5, Lnh/m;->a:Lnh/m;

    invoke-virtual {v5}, Lnh/m;->e()Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v1, Luh/b;->a:Luh/b$a;

    sget v2, Lcom/transsion/postdetail/R$string;->check_error:I

    invoke-virtual {v1, v2}, Luh/b$a;->d(I)V

    return-void

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->checkLogin()Z

    move-result v5

    if-nez v5, :cond_b

    return-void

    :cond_b
    const-string v5, "0"

    if-nez v1, :cond_c

    :goto_6
    move-object/from16 v17, v5

    goto :goto_8

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_6

    :cond_d
    :goto_7
    move-object/from16 v17, v6

    goto :goto_8

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :goto_8
    if-nez v1, :cond_f

    :goto_9
    move-object/from16 v18, v5

    goto :goto_a

    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getRootCommentId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v18, v6

    :goto_a
    new-instance v6, Lcom/transsion/postdetail/bean/CommentBody;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-eqz v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    move-object/from16 v19, v1

    goto :goto_c

    :cond_13
    :goto_b
    move-object/from16 v19, v5

    :goto_c
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const-string v22, ""

    const-string v23, "POST"

    move-object v15, v6

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v23}, Lcom/transsion/postdetail/bean/CommentBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->s:Z

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/transsion/postdetail/comment/g;->l()V

    :cond_14
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_e

    :cond_15
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_d

    :cond_16
    move-object v14, v1

    :goto_d
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/e;

    invoke-direct {v1, v6, v0}, Lcom/transsion/postdetail/ui/fragment/e;-><init>(Lcom/transsion/postdetail/bean/CommentBody;Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-direct {v0, v14, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->l1(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    goto :goto_f

    :cond_17
    :goto_e
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    if-eqz v1, :cond_18

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->s(Ljava/lang/String;Lcom/transsion/postdetail/bean/CommentBody;)V

    :cond_18
    :goto_f
    return-void
.end method

.method public T(Lqo/a;I)V
    .locals 3

    const-string p2, "info"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "\u52a0\u8f7d\u66f4\u591a"

    invoke-direct {p0, p2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lqo/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->m:I

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->p(Lqo/a;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final Z0(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->M:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/i0$a;->a(Lcom/transsion/postdetail/comment/i0;Landroid/text/Editable;)V

    return-void
.end method

.method public final b1(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->x:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/i0$a;->b(Lcom/transsion/postdetail/comment/i0;Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public final c1(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 6

    const-string v0, "commentDelete"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v3, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;->o:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$a;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1}, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    if-eqz v2, :cond_5

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$f;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {v2, v3}, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;->o0(Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment$b;)V

    :cond_5
    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->N:Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1, v0, p1}, Lcom/transsion/postdetail/comment/CommentDeleteDialogFragment;->q0(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Z)V

    :cond_6
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/postdetail/comment/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/comment/g$a;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/g$a;->d(I)Lcom/transsion/postdetail/comment/g$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/postdetail/comment/g$a;->c(Lcom/transsion/postdetail/comment/i0;)Lcom/transsion/postdetail/comment/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/postdetail/comment/m;->h()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/g$a;->b(Landroid/text/Editable;)Lcom/transsion/postdetail/comment/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/g$a;->e(Lcom/transsion/moviedetailapi/bean/CommentBean;)Lcom/transsion/postdetail/comment/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/g$a;->a()Lcom/transsion/postdetail/comment/g;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/j;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/j;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->K:Landroid/text/Editable;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/comment/g;->j(Landroid/text/Editable;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/g;->g()Lro/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lro/a;->i(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->f:Lcom/transsion/postdetail/comment/g;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G0(Landroid/view/LayoutInflater;)Lso/j;

    move-result-object p1

    return-object p1
.end method

.method public hideLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/j;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/j;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/transsion/postdetail/R$id;->comment_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initAdapter()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->W0()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initExposureHelper()V

    const-string p1, "onViewCreated"

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->initViewModel()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I0()V

    new-instance p1, Lf/j;

    invoke-direct {p1}, Lf/j;-><init>()V

    new-instance p2, Lcom/transsion/postdetail/ui/fragment/g;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/fragment/g;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->I:Landroidx/activity/result/b;

    return-void
.end method

.method public lazyLoadData()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->g:Lcom/transsion/postdetail/bean/CommentListBean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->loadData()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B0(Lcom/transsion/postdetail/bean/CommentListBean;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "POST_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    const-string v0, "TOPIC_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-virtual {v0}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    const-string v0, "comment_count"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    const-string v0, "show_download"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->o:Z

    const-string v0, "from_detail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->p:Z

    const-string v0, "comment_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->A:Ljava/lang/String;

    const-string v0, "page_from"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->B:Ljava/lang/String;

    const-string v0, "TRACK_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->C:Ljava/lang/String;

    const-string v0, "PREVIOUS_TRACK_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->D:Ljava/lang/String;

    const-string v0, "PREVIOUS_PAGE_VIDEO_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->E:Ljava/lang/String;

    const-string v0, "UGC_VIDEO_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->F:Ljava/lang/String;

    const-string v0, "PAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->G:Ljava/lang/String;

    const-string v0, "COLLECTION_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->H:Ljava/lang/String;

    :cond_1
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/f;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/f;-><init>(Lcom/transsion/postdetail/ui/fragment/CommentFragment;)V

    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {p1, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class p1, Lfp/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string p1, "getName(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lsj/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lsj/b;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lsj/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsj/b;->f()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->y:Lsj/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsj/b;->f()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p1, "onTextChanged"

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    move-result v0

    return v0
.end method

.method public s(Landroid/view/View;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/postdetail/comment/m;

    new-instance v8, Lcom/transsion/postdetail/comment/SocialStatus;

    iget-boolean v5, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->o:Z

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/comment/SocialStatus;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/comment/m;-><init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    new-instance p1, Lro/a;

    invoke-direct {p1}, Lro/a;-><init>()V

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lro/a;->h(I)V

    invoke-virtual {p1, p0}, Lro/a;->f(Lcom/transsion/postdetail/comment/i0;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lro/a;->g(Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d:Lcom/transsion/postdetail/comment/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/comment/m;->k(Lro/a;)V

    :cond_0
    return-void
.end method

.method public startLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/j;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/j;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public updateCommentCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->n:J

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->j1()V

    return-void
.end method

.method public z(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 4

    const-string v0, "\u70b9\u8d5e"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->S0(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/transsion/postdetail/bean/CommentLikeBody;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/postdetail/bean/CommentLikeBody;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->h:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->q(Lcom/transsion/postdetail/bean/CommentLikeBody;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->isHot()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "like_hot_comment"

    goto :goto_0

    :cond_1
    const-string v0, "dislike_hot_comment"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "like_comment"

    goto :goto_0

    :cond_3
    const-string v0, "dislike_comment"

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->X0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->M:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getLikeStatu()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_4
    return-void
.end method
