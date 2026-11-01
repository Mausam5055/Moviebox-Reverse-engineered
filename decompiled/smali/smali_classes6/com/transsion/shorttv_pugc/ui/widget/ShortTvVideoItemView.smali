.class public final Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;

# interfaces
.implements Lcom/transsion/player/orplayer/f;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/shorttv_pugc/ui/widget/a;
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B!\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eB\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000fB\u001b\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\r\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0013JU\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010\'\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J-\u0010)\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00107\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010@\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u001f\u0010E\u001a\u00020\u00112\u0006\u0010C\u001a\u00020B2\u0006\u0010?\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0013J\r\u0010H\u001a\u00020\u0011\u00a2\u0006\u0004\u0008H\u0010\u0013J\u000f\u0010I\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008I\u0010\u0013J\u0015\u0010K\u001a\u00020\u00112\u0006\u0010J\u001a\u00020\u001c\u00a2\u0006\u0004\u0008K\u0010LJ\u0015\u0010N\u001a\u00020\u00112\u0006\u0010M\u001a\u00020\u001c\u00a2\u0006\u0004\u0008N\u0010LJ\u000f\u0010O\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008O\u0010\u0013J\u000f\u0010P\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008P\u0010\u0013J\u0019\u0010S\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008S\u0010TJ\u0019\u0010U\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008U\u0010TJ\u0019\u0010V\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008V\u0010TJ!\u0010Y\u001a\u00020\u00112\u0006\u0010X\u001a\u00020W2\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0019\u0010[\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008[\u0010TJ\u0019\u0010\\\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008\\\u0010TJ!\u0010_\u001a\u00020\u00112\u0006\u0010^\u001a\u00020]2\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008_\u0010`J\u000f\u0010a\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008a\u0010\u0013J\u0019\u0010b\u001a\u00020\u00112\u0008\u0010R\u001a\u0004\u0018\u00010QH\u0016\u00a2\u0006\u0004\u0008b\u0010TJ\u0019\u0010e\u001a\u00020\u00112\u0008\u0010d\u001a\u0004\u0018\u00010cH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\r\u0010g\u001a\u00020\u0011\u00a2\u0006\u0004\u0008g\u0010\u0013J\u000f\u0010h\u001a\u00020WH\u0016\u00a2\u0006\u0004\u0008h\u0010iJ\r\u0010j\u001a\u00020\u0011\u00a2\u0006\u0004\u0008j\u0010\u0013J\u000f\u0010k\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008k\u0010\u0013J\u000f\u0010l\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008l\u0010\u0013J\u001f\u0010o\u001a\u00020\u00112\u0006\u0010X\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010q\u001a\u00020\u00112\u0006\u0010n\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008q\u0010rJ#\u0010w\u001a\u00020\u00112\n\u0010u\u001a\u00060sj\u0002`t2\u0006\u0010v\u001a\u00020mH\u0016\u00a2\u0006\u0004\u0008w\u0010xJ\u000f\u0010y\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008y\u0010\u0013J\u000f\u0010z\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008z\u0010\u0013J\u000f\u0010{\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008{\u0010\u0013J\u000f\u0010|\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008|\u0010\u0013J\u001b\u0010~\u001a\u00020\u00112\n\u0008\u0002\u0010}\u001a\u0004\u0018\u00010WH\u0002\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0011\u0010\u0080\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0080\u0001\u0010\u0013J\u0011\u0010\u0081\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0081\u0001\u0010\u0013J\u001b\u0010\u0083\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u0019\u0010\u0085\u0001\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0005\u0008\u0085\u0001\u0010\u000fJ(\u0010\u0088\u0001\u001a\u00020\u00112\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J$\u0010\u008c\u0001\u001a\u00020\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u001c2\u0007\u0010\u008b\u0001\u001a\u00020\u0015H\u0002\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J\u001b\u0010\u008e\u0001\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0005\u0008\u008e\u0001\u00101J\u001a\u0010\u008f\u0001\u001a\u00020\u00112\u0006\u0010X\u001a\u00020WH\u0002\u00a2\u0006\u0006\u0008\u008f\u0001\u0010\u0090\u0001J\u001b\u0010\u0092\u0001\u001a\u00020\u00112\u0007\u0010\u0091\u0001\u001a\u00020WH\u0002\u00a2\u0006\u0006\u0008\u0092\u0001\u0010\u0090\u0001J\u0011\u0010\u0093\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0093\u0001\u0010\u0013J\u0011\u0010\u0094\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0094\u0001\u0010\u0013J\u0011\u0010\u0095\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0095\u0001\u0010\u0013J\u0011\u0010\u0096\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0096\u0001\u0010\u0013J\u001b\u0010\u0097\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0084\u0001J\"\u0010\u009a\u0001\u001a\u00020\u00112\u000e\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0098\u0001H\u0002\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009c\u0001\u0010\u0013J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0013J\u0011\u0010\u0086\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0086\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009f\u0001\u0010\u0013J$\u0010d\u001a\u00020\u00112\u0006\u0010&\u001a\u00020%2\n\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u00a0\u0001H\u0002\u00a2\u0006\u0005\u0008d\u0010\u00a2\u0001J\u0011\u0010\u00a3\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a3\u0001\u0010\u0013R\u0017\u0010\u00a6\u0001\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0017\u0010\u00a9\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030\u00aa\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001b\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008u\u0010\u00b1\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u00a5\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ba\u0001\u0010\u00bb\u0001R\u001c\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00bc\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u001c\u0010\u00c3\u0001\u001a\u0005\u0018\u00010\u00c0\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R\u0019\u0010\u00c5\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c4\u0001\u0010\u0081\u0001R\u0019\u0010\u00c7\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c6\u0001\u0010\u0081\u0001R\u0019\u0010\u00c9\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u0081\u0001R\u0019\u0010\u00cc\u0001\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001R\u0017\u0010\u00ce\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cd\u0001\u0010\u00a8\u0001R\u0017\u0010\u00d0\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cf\u0001\u0010\u00a8\u0001R\u0017\u0010\u00d2\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d1\u0001\u0010\u00a8\u0001R\u0017\u0010\u00d4\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d3\u0001\u0010\u00a8\u0001R\u0017\u0010J\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008d\u0010\u00a5\u0001R\u001b\u0010\u00d6\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u00d5\u0001R\u001c\u0010\u00da\u0001\u001a\u0005\u0018\u00010\u00d7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001R\u001e\u0010\u00de\u0001\u001a\t\u0012\u0004\u0012\u00020\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00dc\u0001\u0010\u00dd\u0001R \u0010\u00e0\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00df\u0001\u0010\u00dd\u0001R \u0010\u00e2\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e1\u0001\u0010\u00dd\u0001R \u0010\u00e3\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u00dd\u0001R \u0010\u00e4\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u00db\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u00dd\u0001R\u0019\u0010\u00e5\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0081\u0001R\u0019\u0010\u00e6\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u0081\u0001R\u001d\u0010\u00eb\u0001\u001a\u00080\u00e7\u0001j\u0003`\u00e8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e9\u0001\u0010\u00ea\u0001R\u0019\u0010\u00ec\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009d\u0001\u0010\u0081\u0001R\u0018\u0010\u00f0\u0001\u001a\u00030\u00ed\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u00ef\u0001R\u001d\u0010\u00f1\u0001\u001a\u00080\u00e7\u0001j\u0003`\u00e8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00ea\u0001R\u001c\u0010\u00f4\u0001\u001a\u0005\u0018\u00010\u00f2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00f3\u0001\u00a8\u0006\u00f5\u0001"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/f;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/r;",
        "Lcom/transsion/shorttv_pugc/ui/widget/a;",
        "Lcom/transsion/subtitle_download/a;",
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
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "item",
        "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;",
        "fragment",
        "position",
        "",
        "videoLoadMore",
        "",
        "basePostId",
        "baseItemType",
        "isPayloads",
        "fromTrending",
        "setData",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V",
        "Lcom/transsion/player/orplayer/g;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "onPageSelected",
        "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "updateShortTvInfo",
        "onPageRelease",
        "(I)V",
        "width",
        "height",
        "onVideoSizeChanged",
        "(II)V",
        "updateLockState",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "setPagerLayoutManager",
        "(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V",
        "Landroid/widget/FrameLayout;",
        "getPlayerContainer",
        "()Landroid/widget/FrameLayout;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
        "getViewModel",
        "(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
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
        "reset",
        "app2Background",
        "pageFrom",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "onRenderFirstFrame",
        "Lao/e;",
        "mediaSource",
        "onVideoStart",
        "(Lao/e;)V",
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
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "showEpisodeListDialog",
        "getProgress",
        "()J",
        "onNetConnect",
        "onGetDubsInfo",
        "onAudioTrackChange",
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
        "stDownloadTable",
        "onDownloading",
        "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "onComplete",
        "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "dbBean",
        "onFail",
        "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "a0",
        "c0",
        "b0",
        "f0",
        "count",
        "g0",
        "(Ljava/lang/Long;)V",
        "C",
        "Z",
        "show",
        "W",
        "(Z)V",
        "D",
        "w",
        "h",
        "h0",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "ep",
        "ugcVideo",
        "T",
        "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "i0",
        "d0",
        "(J)V",
        "max",
        "e0",
        "O",
        "U",
        "R",
        "X",
        "setLoading",
        "Lkotlin/Function0;",
        "block",
        "S",
        "(Lkotlin/jvm/functions/Function0;)V",
        "P",
        "G",
        "B",
        "Y",
        "Lcom/transsion/shorttv_pugc/bean/Video;",
        "video",
        "(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V",
        "E",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "b",
        "I",
        "screenWidth",
        "Lms/j0;",
        "c",
        "Lms/j0;",
        "viewBinding",
        "d",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "data",
        "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;",
        "f",
        "Ljava/lang/Boolean;",
        "g",
        "Ljava/lang/Integer;",
        "i",
        "Lcom/transsion/player/orplayer/g;",
        "j",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "k",
        "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;",
        "Landroid/view/GestureDetector;",
        "l",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lut/c;",
        "m",
        "Lut/c;",
        "dotLayer",
        "n",
        "isClickPause",
        "o",
        "isHorizontalDragging",
        "p",
        "isPageHide",
        "q",
        "J",
        "currentSaveProgress",
        "r",
        "resImgLargeWidth",
        "s",
        "resImgLargeHeight",
        "t",
        "resImgSmallWidth",
        "u",
        "resImgSmallHeight",
        "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
        "mShortTvViewModel",
        "Lxt/a;",
        "x",
        "Lxt/a;",
        "mShortTvSubViewModel",
        "Landroidx/lifecycle/c0;",
        "y",
        "Landroidx/lifecycle/c0;",
        "observer",
        "z",
        "favoriteObserver",
        "A",
        "likeObserver",
        "followObserver",
        "shareObserver",
        "isFirstFrame",
        "isPrepare",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "F",
        "Ljava/lang/Runnable;",
        "delayToastNetErrRunnable",
        "isLoading",
        "Landroid/os/Handler;",
        "H",
        "Landroid/os/Handler;",
        "autoHideRightMenuHandle",
        "autoHideRightMenuRunnable",
        "Lcom/transsion/shorttv_pugc/ui/adapter/p;",
        "Lcom/transsion/shorttv_pugc/ui/adapter/p;",
        "tagAdapter",
        "shortTvLib_release"
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
.field private final A:Landroidx/lifecycle/c0;

.field private final B:Landroidx/lifecycle/c0;

.field private final C:Landroidx/lifecycle/c0;

.field private D:Z

.field private E:Z

.field private final F:Ljava/lang/Runnable;

.field private G:Z

.field private final H:Landroid/os/Handler;

.field private final I:Ljava/lang/Runnable;

.field private J:Lcom/transsion/shorttv_pugc/ui/adapter/p;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lms/j0;

.field private d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

.field private e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Lcom/transsion/player/orplayer/g;

.field private j:Lcom/transsion/player/ui/ORPlayerView;

.field private k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

.field private l:Landroid/view/GestureDetector;

.field private m:Lut/c;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private v:Ljava/lang/String;

.field private w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

.field private x:Lxt/a;

.field private final y:Landroidx/lifecycle/c0;

.field private final z:Landroidx/lifecycle/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "ShortTvVideoItemView"

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b:I

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_layout_play_detail:I

    invoke-static {p3, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lms/j0;->a(Landroid/view/View;)Lms/j0;

    move-result-object p3

    const-string v0, "bind(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, p3, Lms/j0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p3, Lms/j0;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v1

    invoke-virtual {p2, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p3, Lms/j0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->m:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p2, 0x42400000    # 48.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->r:I

    const/high16 p2, 0x42800000    # 64.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->s:I

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->t:I

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->u:I

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D(Landroid/content/Context;)V

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/v;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/v;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y:Landroidx/lifecycle/c0;

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/a0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/a0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z:Landroidx/lifecycle/c0;

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/b0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/b0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A:Landroidx/lifecycle/c0;

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/c0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/c0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B:Landroidx/lifecycle/c0;

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/d0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/d0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C:Landroidx/lifecycle/c0;

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/e0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/e0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->F:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/f0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/f0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    return-void
.end method

.method private static final A(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b0()V

    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q0(Z)V

    :cond_0
    return-void
.end method

.method private final C()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_5

    invoke-static {v2}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v1

    invoke-static {}, Landroidx/core/view/k2;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final D(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$b;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$b;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->l:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G()V

    return-void
.end method

.method private final E()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getHashTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/transsion/shorttv_pugc/ui/adapter/p;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/transsion/shorttv_pugc/ui/adapter/p;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    new-instance v3, Lcom/transsion/shorttv_pugc/ui/widget/y;

    invoke-direct {v3, v2, v0, p0}, Lcom/transsion/shorttv_pugc/ui/widget/y;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->t:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v1, Lcom/transsion/shorttv_pugc/base/widget/k;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/shorttv_pugc/base/widget/k;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv_pugc/ui/adapter/p;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final F(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;

    const-string p4, "/home/hashtag"

    invoke-static {p4}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p4

    const-string v0, "hashtag"

    invoke-static {p1, p3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->o(Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p4, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p4, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p0, Lut/a;->a:Lut/a;

    iget-object p1, p2, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p3, p5, v0}, Lut/a;->c(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;ILjava/lang/String;)V

    return-void
.end method

.method private final G()V
    .locals 3

    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v2, v2, Lms/j0;->I:Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoProgressDragGestureView;

    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv_pugc/base/widget/e;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$c;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/base/widget/e;->r(Lcom/transsion/shorttv_pugc/base/widget/e$a;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/z;

    invoke-direct {v1}, Lcom/transsion/shorttv_pugc/ui/widget/z;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final H(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final I(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c0()V

    return-void
.end method

.method private static final J(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->W(Z)V

    return-void
.end method

.method private static final K(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final L(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v0, p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->V(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final M(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->n(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final N(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "/profile/user_profile"

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final O()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G:Z

    const-string v1, "layoutTvEpisode"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->o:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->o:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lut/c;->b()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_4
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->o:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lut/c;->c()V

    :cond_8
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->R()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    :cond_9
    :goto_2
    return-void
.end method

.method private final P()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->P()Lst/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    const-string v4, ""

    :cond_2
    invoke-interface {v0, v1, v2, v3, v4}, Lst/h;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static final Q(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->R()V

    return-void
.end method

.method private final R()V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playVideo   data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  orPlayer:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ------- "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->X()V

    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- startplay"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private final S(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->X()V

    :goto_0
    return-void
.end method

.method private final T(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v3, v3, Lms/j0;->c:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    new-instance v4, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$d;

    invoke-direct {v4, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$d;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v3, v4}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->setExpandListener(Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView$c;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDescription()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDescription()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    :goto_0
    const-string v4, "format(...)"

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v0

    aput-object p2, v5, v2

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "EP%s | %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "EP%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_3
    invoke-virtual {v3, p1}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final U()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->S()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->W(Z)V

    return-void
.end method

.method private static final V(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->f0()V

    return-void
.end method

.method private final W(Z)V
    .locals 3

    const-string v0, "groupContent"

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Z()V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getAvatar()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lct/b;->d(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->c:Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/base/widget/expand/ExpandView;->isSetTitleSuccess()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->T(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lct/b;->c(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->o:Landroid/widget/FrameLayout;

    const-string v0, "layoutTvEpisode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lct/b;->d(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C()V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->f:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lct/b;->c(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivSubscribe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lct/b;->c(Landroid/view/View;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private final X()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->S0()V

    :cond_0
    return-void
.end method

.method private final Y()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->q0(Z)V

    :cond_0
    return-void
.end method

.method private final Z()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_5

    invoke-static {v2}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v1

    invoke-static {}, Landroidx/core/view/k2;->a()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final a0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lht/e;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasFavorite()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static final synthetic access$autoHideRightMenu(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w()V

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    return-object p0
.end method

.method public static final synthetic access$getDotLayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lut/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lms/j0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->o:Z

    return p0
.end method

.method public static final synthetic access$onDoubleClick(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->O()V

    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->o:Z

    return-void
.end method

.method public static final synthetic access$showRightMenu(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    return-void
.end method

.method public static final synthetic access$updateProgress(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    return-void
.end method

.method private final b0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v2, v1, Lms/j0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_1

    iget-object v0, v1, Lms/j0;->f:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v2}, Lct/b;->d(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v2}, Lct/b;->b(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private final c0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lht/e;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private final d0(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p2, p2, Lms/j0;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p2, p2, Lms/j0;->D:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/transsion/shorttv_pugc/utils/j;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/utils/j;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final e0(J)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgressMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final f0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getShareNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lht/e;->a(J)Ljava/lang/String;

    return-void
.end method

.method private final g0(Ljava/lang/Long;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getShareNum()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lht/e;->a(J)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static synthetic h(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->M(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final h0(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->d:Landroid/widget/FrameLayout;

    const-string v1, "flContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-int/2addr p2, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p2, p1

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->K(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 10

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v2, v2, Lms/j0;->G:Lcom/transsion/shorttv_pugc/base/widget/TnTextView;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EP%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCover()Lcom/transsion/shorttv_pugc/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Let/b;->a:Let/b$a;

    iget v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b:I

    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, v3

    invoke-static/range {v0 .. v9}, Let/b$a;->e(Let/b$a;Ljava/lang/String;IIZZZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "into  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$e;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$e;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->L(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->x(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method

.method public static synthetic n(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->J(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->F(Lcom/transsion/shorttv_pugc/ui/adapter/p;Ljava/util/List;Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic q(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->N(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final setLoading(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->G:Z

    const-string v0, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->startLoading()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->hideLoading()V

    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->V(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Q(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method

.method private final v(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->d:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->h0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private final w()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->o:Landroid/widget/FrameLayout;

    const-string v1, "layoutTvEpisode"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->I:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static final x(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B()V

    return-void
.end method

.method private static final y(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->X()V

    return-void
.end method

.method private static final z(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a0()V

    return-void
.end method


# virtual methods
.method public app2Background()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lut/c;->d(Z)V

    :cond_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public getPlayerContainer()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->d:Landroid/widget/FrameLayout;

    const-string v1, "flContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProgress()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    return-object p1
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

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->S()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_4
    return-void
.end method

.method public onAudioTrackChange()V
    .locals 0

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lht/c;->a:Lht/c;

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lht/c;->a(IJ)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v4, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onclick, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    sget v3, Lcom/transsion/shorttv/R$id;->iv_subscribe:I

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/g0;

    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/g0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    sget-object v3, Lut/a;->a:Lut/a;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v7, v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "subscribe"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lut/a;->b(Lut/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_5
    :goto_2
    sget v3, Lcom/transsion/shorttv/R$id;->tv_episode:I

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->showEpisodeListDialog()V

    goto/16 :goto_10

    :cond_7
    :goto_3
    sget v3, Lcom/transsion/shorttv/R$id;->tv_like:I

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_a

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/h0;

    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/h0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    sget-object v3, Lut/a;->a:Lut/a;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v2

    :cond_9
    move-object v7, v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "like"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lut/a;->b(Lut/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_a
    :goto_4
    sget v3, Lcom/transsion/shorttv/R$id;->iv_share:I

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_f

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_c

    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v1, v3}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->P()V

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->getShareNum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_5

    :cond_d
    const-wide/16 v3, 0x1

    :goto_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g0(Ljava/lang/Long;)V

    sget-object v3, Lut/a;->a:Lut/a;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v2

    :cond_e
    move-object v7, v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "share"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lut/a;->b(Lut/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_f
    :goto_6
    sget v3, Lcom/transsion/shorttv/R$id;->tv_favorite:I

    if-nez v1, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_12

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/i0;

    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/i0;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    sget-object v3, Lut/a;->a:Lut/a;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v2

    :cond_11
    move-object v7, v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "favorite"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lut/a;->b(Lut/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_12
    :goto_7
    sget v3, Lcom/transsion/shorttv/R$id;->iv_play_status:I

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->O()V

    goto/16 :goto_10

    :cond_14
    :goto_8
    sget v3, Lcom/transsion/shorttv/R$id;->iv_short_cover:I

    if-nez v1, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_20

    :goto_9
    sget v3, Lcom/transsion/shorttv/R$id;->tv_name:I

    if-nez v1, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_17

    goto/16 :goto_f

    :cond_17
    :goto_a
    sget v3, Lcom/transsion/shorttv/R$id;->iv_download:I

    if-nez v1, :cond_18

    goto/16 :goto_e

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_1e

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->r()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lst/c;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_b

    :cond_19
    move-object v6, v2

    :goto_b
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_c

    :cond_1a
    move-object v9, v2

    :goto_c
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_d

    :cond_1b
    move-object v10, v2

    :goto_d
    const-string v7, "ugc_video"

    const-string v8, "/ugc_shorts/detail"

    invoke-interface/range {v3 .. v10}, Lst/c;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    sget-object v11, Lut/a;->a:Lut/a;

    iget-object v13, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v2

    :cond_1d
    move-object v15, v2

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v12, "saved"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lut/a;->b(Lut/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10

    :cond_1e
    :goto_e
    sget v2, Lcom/transsion/shorttv/R$id;->iv_back:I

    if-nez v1, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_22

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_10

    :cond_20
    :goto_f
    new-instance v1, Lcom/transsion/shorttv_pugc/ui/widget/w;

    invoke-direct {v1, v0}, Lcom/transsion/shorttv_pugc/ui/widget/w;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->S(Lkotlin/jvm/functions/Function0;)V

    sget-object v3, Lut/a;->a:Lut/a;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v2

    :cond_21
    move-object v7, v2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "cover"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lut/a;->b(Lut/a;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_22
    :goto_10
    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "stDownloadTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const-string p1, "onCompletion\uff0c play next"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->f(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->S()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->y:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->y()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->z:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->J()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->C:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->E()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->A:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->B()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->B:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->H:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    const-string p1, "stDownloadTable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dbBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onGetDubsInfo()V
    .locals 0

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->j(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->l(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->F:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public final onNetConnect()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ORSubtitle_v"

    const-string v2, "onNetConnect, \u7f51\u7edc\u6062\u590d\uff0c\u68c0\u6d4b\u5b57\u5e55"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onPageRelease(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->onPlayerReset()V

    return-void
.end method

.method public onPageSelected(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/ui/ORPlayerView;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lut/c;->p(Lcom/transsion/player/orplayer/g;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c0(I)V

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 5

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/transsion/player/orplayer/f$a;->r(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lao/e;->k()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> IPlayerListener --> onPlayError()  errorCode:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const-string v2, "i_media"

    invoke-virtual {v0, v2, p2, v1}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x7d1

    if-eq p2, v0, :cond_4

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x7d2

    if-ne p1, p2, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->X()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPlayErrorChangePayer(Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->s(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player- onPlayerReset data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E:Z

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lut/c;->e(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivCover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->d(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerReset   visible  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/ui/ORPlayerView;

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->q:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 11

    iget-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E:Z

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->D()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getPosition()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v3

    if-ne v4, v3, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getProgress()J

    move-result-wide v3

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "player- onPrepare, duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  this = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    iput-wide v3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->q:J

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3, v4}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->m()V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :cond_3
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->o:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-wide/16 v5, 0x64

    cmp-long v5, v1, v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "onProgress- duration <= 0, return"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    :goto_1
    iget-object v12, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v12, :cond_4

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-wide/from16 v13, p1

    invoke-static/range {v12 .. v17}, Lcom/transsion/player/orplayer/f$a;->z(Lcom/transsion/player/orplayer/f;JLao/e;ILjava/lang/Object;)V

    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    cmp-long v1, p1, v3

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "ivCover"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "onProgress-progress>= cover gone"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v1, v1, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lct/b;->b(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 9

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v2, v2, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v6, "ivCover"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "player-   viewBinding.ivCover.isVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " onRenderFirstFrame"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    if-nez v0, :cond_1

    iput-boolean v8, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lut/c;->onRenderFirstFrame()V

    :cond_1
    invoke-direct {p0, v7}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->b(Landroid/view/View;)V

    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lut/c;->i()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->p:Z

    iget-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-ne p1, p2, :cond_4

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "ON_RESUME"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/widget/x;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/widget/x;-><init>(Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->U()V

    goto :goto_0

    :cond_5
    iput-boolean p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->p:Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->N()Lst/e;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    invoke-interface {p1, v0}, Lst/e;->f(Lcom/transsion/player/orplayer/g;)Z

    move-result p1

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->l:Landroid/view/GestureDetector;

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

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Lcom/transsion/player/orplayer/f$a;->G(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->Y()V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->h0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onVideoSizeChanged "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoStart"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->onPrepare(Lao/e;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->J(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object p1, p1, Lms/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w()V

    return-void
.end method

.method public final reset()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewMedia data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->n:Z

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->P0(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lut/c;->e(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v0, v0, Lms/j0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lct/b;->b(Landroid/view/View;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->q:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d0(J)V

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e0(J)V

    return-void
.end method

.method public setData(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "item"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "fragment"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Llg/a;->a:Llg/a$a;

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v7

    const/4 v14, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getPosition()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v14

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setData position:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "  ep:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " item:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iput-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->f:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v3, v3, Lms/j0;->f:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v3

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v7, v7, Lms/j0;->f:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    move-result-object v7

    iput-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    new-instance v7, Landroidx/lifecycle/v0;

    invoke-direct {v7, v3}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v3, Lxt/a;

    invoke-virtual {v7, v3}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lxt/a;

    iput-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->x:Lxt/a;

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    if-nez p7, :cond_2

    new-instance v3, Lut/c;

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-direct {v3, v2, v7}, Lut/c;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)V

    iput-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    :cond_2
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Lut/c;->l(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v3, :cond_4

    move-object/from16 v4, p6

    invoke-virtual {v3, v4}, Lut/c;->k(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lut/c;->r(Ljava/lang/String;)V

    :cond_5
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isDataNotComplete()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v3, :cond_6

    iget-object v4, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-virtual {v3, v4}, Lut/c;->s(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    :cond_6
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    const-string v4, ""

    if-eqz v3, :cond_9

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->I()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    :cond_7
    move-object v7, v4

    :cond_8
    invoke-virtual {v3, v7}, Lut/c;->n(Ljava/lang/String;)V

    :cond_9
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getPosition()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_a
    move-object v3, v14

    :goto_1
    invoke-static {v3}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_b

    new-instance v9, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/transsion/shorttv_pugc/ShorttvModel;->a:Lcom/transsion/shorttv_pugc/ShorttvModel;

    invoke-virtual {v11}, Lcom/transsion/shorttv_pugc/ShorttvModel;->a()I

    move-result v11

    const/4 v12, 0x2

    invoke-direct {v9, v10, v11, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    goto :goto_2

    :cond_b
    new-instance v9, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/transsion/shorttv_pugc/ShorttvModel;->a:Lcom/transsion/shorttv_pugc/ShorttvModel;

    invoke-virtual {v11}, Lcom/transsion/shorttv_pugc/ShorttvModel;->a()I

    move-result v11

    invoke-direct {v9, v10, v11, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    :goto_2
    const/16 v10, 0x21

    invoke-virtual {v7, v9, v5, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_c
    move-object v9, v14

    :goto_3
    iget-object v10, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_4

    :cond_d
    move-object v10, v14

    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ShortTV \u2022 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / EP"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v9, v9, Lms/j0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v16

    if-nez v16, :cond_e

    goto :goto_6

    :cond_e
    sget-object v15, Let/b;->a:Let/b$a;

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v2, v2, Lms/j0;->m:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v9, "ivShortCover"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getAvatar()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_f

    move-object/from16 v18, v4

    goto :goto_5

    :cond_f
    move-object/from16 v18, v9

    :goto_5
    const/16 v28, 0xff8

    const/16 v29, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v15 .. v29}, Let/b$a;->n(Let/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZZZZZZIILjava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v2, v2, Lms/j0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_6
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {v0, v3, v2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->T(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    const/16 v2, 0x1e

    if-lt v8, v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-static {}, Landroidx/core/view/o2;->a()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/g2;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-static {v2}, Lcom/blankj/utilcode/util/d;->e(Landroid/view/Window;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result v2

    if-le v2, v6, :cond_11

    goto :goto_7

    :cond_11
    move v6, v5

    :goto_7
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const-string v7, "progressGuideline"

    if-nez v6, :cond_19

    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    move-result v6

    if-lez v6, :cond_19

    iget-object v6, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v6, v6, Lms/j0;->s:Landroid/widget/Space;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_18

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_12

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_12
    move-object v4, v14

    :goto_8
    if-eqz v4, :cond_13

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9

    :cond_13
    move v4, v5

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_14

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_a

    :cond_14
    move-object v8, v14

    :goto_a
    if-eqz v8, :cond_15

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_b

    :cond_15
    move v8, v5

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_16

    move-object v14, v9

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_16
    if-eqz v14, :cond_17

    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_17
    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v2

    invoke-virtual {v7, v4, v8, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_18
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v3, v3, Lms/j0;->s:Landroid/widget/Space;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_20

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_1a

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_c

    :cond_1a
    move-object v4, v14

    :goto_c
    if-eqz v4, :cond_1b

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_d

    :cond_1b
    move v4, v5

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_1c

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_e

    :cond_1c
    move-object v7, v14

    :goto_e
    if-eqz v7, :cond_1d

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_f

    :cond_1d
    move v7, v5

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_1e

    move-object v14, v8

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_1e
    if-eqz v14, :cond_1f

    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_1f
    invoke-virtual {v6, v4, v7, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_20
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_10
    invoke-direct/range {p0 .. p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->i0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->f0()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->b0()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c0()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a0()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->E()V

    goto :goto_11

    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->c:Lms/j0;

    iget-object v2, v2, Lms/j0;->G:Lcom/transsion/shorttv_pugc/base/widget/TnTextView;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->n(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "EP%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public setPagerLayoutManager(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "pagerLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;

    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final showEpisodeListDialog()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;

    const-string v1, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;->Q0()V

    return-void
.end method

.method public updateLockState(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 0

    return-void
.end method

.method public updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShortTvInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ugcVideoId:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v1, v2}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelect position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " item is null "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p2, p3, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p2, v3}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "addView-----"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_5
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "------seekTo url="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_6

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(Ljava/lang/String;J)V

    :cond_6
    invoke-virtual {p0, p2}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_8
    return-void
.end method

.method public final videoStartPrepare(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->D:Z

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lut/c;->q(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_1

    const-string v0, "immersive_play"

    invoke-virtual {p1, v0}, Lut/c;->o(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->d:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lut/c;->m(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lut/c;->g()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->m:Lut/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lut/c;->a()V

    :cond_5
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;->w:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->X()V

    :cond_6
    return-void
.end method
