.class public final Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/ShorttvModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UGCVideo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008{\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u00b9\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010!\u001a\u00020 \u0012\u0008\u0008\u0002\u0010#\u001a\u00020\"\u0012\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020\"\u00a2\u0006\u0004\u0008(\u0010)J\u0011\u0010*\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0011\u0010,\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008,\u0010+J\u0011\u0010-\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008-\u0010+J\u0011\u0010.\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008.\u0010+J\u0011\u0010/\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008/\u00100J\u0011\u00101\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u00081\u0010+J\u0011\u00102\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u00082\u0010+J\u000f\u00103\u001a\u00020 H\u0016\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00109\u001a\u0002082\u0006\u00107\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u00089\u0010:J\r\u0010;\u001a\u00020\"\u00a2\u0006\u0004\u0008;\u00106J\u0017\u0010>\u001a\u0002082\u0008\u0010=\u001a\u0004\u0018\u00010<\u00a2\u0006\u0004\u0008>\u0010?J\u001d\u0010C\u001a\u0002082\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020 \u00a2\u0006\u0004\u0008C\u0010DJ\r\u0010E\u001a\u00020 \u00a2\u0006\u0004\u0008E\u00104J\u0012\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008F\u0010+J\u0012\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008G\u0010+J\u0012\u0010H\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008H\u0010+J\u0018\u0010I\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008I\u0010JJ\u0012\u0010K\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008K\u0010LJ\u0012\u0010M\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008M\u0010+J\u0012\u0010N\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0004\u0008N\u00100J\u0012\u0010O\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008O\u0010+J\u0012\u0010P\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008P\u0010+J\u0012\u0010Q\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0004\u0008Q\u00100J\u0012\u0010R\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008R\u0010+J\u0018\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008S\u0010JJ\u0012\u0010T\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0004\u0008T\u0010UJ\u0012\u0010V\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003\u00a2\u0006\u0004\u0008V\u0010WJ\u0012\u0010X\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003\u00a2\u0006\u0004\u0008X\u0010YJ\u0012\u0010Z\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008Z\u0010+J\u0018\u0010[\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008[\u0010JJ\u0012\u0010\\\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\\\u0010+J\u0012\u0010]\u001a\u0004\u0018\u00010\u001dH\u00c6\u0003\u00a2\u0006\u0004\u0008]\u0010^J\u0012\u0010_\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008_\u0010+J\u0010\u0010`\u001a\u00020 H\u00c6\u0003\u00a2\u0006\u0004\u0008`\u00104J\u0010\u0010a\u001a\u00020\"H\u00c6\u0003\u00a2\u0006\u0004\u0008a\u00106J\u0018\u0010b\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$H\u00c6\u0003\u00a2\u0006\u0004\u0008b\u0010JJ\u0010\u0010c\u001a\u00020\"H\u00c6\u0003\u00a2\u0006\u0004\u0008c\u00106J\u00c2\u0002\u0010d\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00072\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010!\u001a\u00020 2\u0008\u0008\u0002\u0010#\u001a\u00020\"2\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$2\u0008\u0008\u0002\u0010\'\u001a\u00020\"H\u00c6\u0001\u00a2\u0006\u0004\u0008d\u0010eJ\u0010\u0010f\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008f\u0010+J\u0010\u0010g\u001a\u00020 H\u00d6\u0001\u00a2\u0006\u0004\u0008g\u00104J\u001a\u0010i\u001a\u00020\"2\u0008\u0010h\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008i\u0010jR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010k\u001a\u0004\u0008l\u0010+\"\u0004\u0008m\u0010nR$\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010k\u001a\u0004\u0008o\u0010+\"\u0004\u0008p\u0010nR$\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010k\u001a\u0004\u0008q\u0010+\"\u0004\u0008r\u0010nR*\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010s\u001a\u0004\u0008t\u0010J\"\u0004\u0008u\u0010vR$\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010w\u001a\u0004\u0008x\u0010L\"\u0004\u0008y\u0010zR$\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010k\u001a\u0004\u0008{\u0010+\"\u0004\u0008|\u0010nR%\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008\u000e\u0010}\u001a\u0004\u0008~\u00100\"\u0005\u0008\u007f\u0010\u0080\u0001R&\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u000f\u0010k\u001a\u0005\u0008\u0081\u0001\u0010+\"\u0005\u0008\u0082\u0001\u0010nR&\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0010\u0010k\u001a\u0005\u0008\u0083\u0001\u0010+\"\u0005\u0008\u0084\u0001\u0010nR\'\u0010\u0011\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008\u0011\u0010}\u001a\u0005\u0008\u0085\u0001\u00100\"\u0006\u0008\u0086\u0001\u0010\u0080\u0001R&\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0012\u0010k\u001a\u0005\u0008\u0087\u0001\u0010+\"\u0005\u0008\u0088\u0001\u0010nR,\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0013\u0010s\u001a\u0005\u0008\u0089\u0001\u0010J\"\u0005\u0008\u008a\u0001\u0010vR(\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0015\u0010\u008b\u0001\u001a\u0005\u0008\u008c\u0001\u0010U\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R(\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0017\u0010\u008f\u0001\u001a\u0005\u0008\u0090\u0001\u0010W\"\u0006\u0008\u0091\u0001\u0010\u0092\u0001R(\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0019\u0010\u0093\u0001\u001a\u0005\u0008\u0094\u0001\u0010Y\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R&\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001a\u0010k\u001a\u0005\u0008\u0097\u0001\u0010+\"\u0005\u0008\u0098\u0001\u0010nR,\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001b\u0010s\u001a\u0005\u0008\u0099\u0001\u0010J\"\u0005\u0008\u009a\u0001\u0010vR&\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001c\u0010k\u001a\u0005\u0008\u009b\u0001\u0010+\"\u0005\u0008\u009c\u0001\u0010nR(\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u001e\u0010\u009d\u0001\u001a\u0005\u0008\u009e\u0001\u0010^\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R&\u0010\u001f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001f\u0010k\u001a\u0005\u0008\u00a1\u0001\u0010+\"\u0005\u0008\u00a2\u0001\u0010nR&\u0010!\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008!\u0010\u00a3\u0001\u001a\u0005\u0008\u00a4\u0001\u00104\"\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R%\u0010#\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008#\u0010\u00a7\u0001\u001a\u0005\u0008\u00a8\u0001\u00106\"\u0005\u0008\u00a9\u0001\u0010:R,\u0010&\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008&\u0010s\u001a\u0005\u0008\u00aa\u0001\u0010J\"\u0005\u0008\u00ab\u0001\u0010vR$\u0010\'\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0005\u0008\'\u0010\u00a7\u0001\u001a\u0004\u0008\'\u00106\"\u0005\u0008\u00ac\u0001\u0010:R(\u0010\u00ad\u0001\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00ad\u0001\u0010\u00a3\u0001\u001a\u0005\u0008\u00ae\u0001\u00104\"\u0006\u0008\u00af\u0001\u0010\u00a6\u0001R(\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u00038F@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00b0\u0001\u0010k\u001a\u0005\u0008\u00b1\u0001\u0010+\"\u0005\u0008\u00b2\u0001\u0010nR)\u0010\u00b3\u0001\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\"\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0013\u0010\u00ba\u0001\u001a\u00020 8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b9\u0001\u00104\u00a8\u0006\u00bb\u0001"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "",
        "Landroid/os/Parcelable;",
        "",
        "ugcVideoId",
        "title",
        "description",
        "",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;",
        "hashTags",
        "Lcom/transsion/shorttv_pugc/bean/Cover;",
        "cover",
        "corner",
        "",
        "duration",
        "watchNum",
        "releaseDate",
        "publishTime",
        "category",
        "genres",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;",
        "creator",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;",
        "interactiveInfo",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;",
        "belongToCollection",
        "ops",
        "country",
        "subjectId",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;",
        "resourceInfo",
        "epTitle",
        "",
        "restrictKid",
        "",
        "builtIn",
        "",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;",
        "streams",
        "isSelected",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)V",
        "videoCoverUrl",
        "()Ljava/lang/String;",
        "videoThumbnail",
        "videoTitle",
        "videoCorner",
        "videoDuration",
        "()Ljava/lang/Long;",
        "videoUGCId",
        "videoUGCType",
        "videoUGCPosition",
        "()I",
        "isVideoPlaying",
        "()Z",
        "isPlaying",
        "",
        "setVideoIsPlaying",
        "(Z)V",
        "isDataNotComplete",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;",
        "firstImage",
        "overrideCoverByFirstImage",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;)V",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "component1",
        "component2",
        "component3",
        "component4",
        "()Ljava/util/List;",
        "component5",
        "()Lcom/transsion/shorttv_pugc/bean/Cover;",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;",
        "component14",
        "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;",
        "component15",
        "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;",
        "component16",
        "component17",
        "component18",
        "component19",
        "()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getUgcVideoId",
        "setUgcVideoId",
        "(Ljava/lang/String;)V",
        "getTitle",
        "setTitle",
        "getDescription",
        "setDescription",
        "Ljava/util/List;",
        "getHashTags",
        "setHashTags",
        "(Ljava/util/List;)V",
        "Lcom/transsion/shorttv_pugc/bean/Cover;",
        "getCover",
        "setCover",
        "(Lcom/transsion/shorttv_pugc/bean/Cover;)V",
        "getCorner",
        "setCorner",
        "Ljava/lang/Long;",
        "getDuration",
        "setDuration",
        "(Ljava/lang/Long;)V",
        "getWatchNum",
        "setWatchNum",
        "getReleaseDate",
        "setReleaseDate",
        "getPublishTime",
        "setPublishTime",
        "getCategory",
        "setCategory",
        "getGenres",
        "setGenres",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;",
        "getCreator",
        "setCreator",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;)V",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;",
        "getInteractiveInfo",
        "setInteractiveInfo",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;)V",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;",
        "getBelongToCollection",
        "setBelongToCollection",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;)V",
        "getOps",
        "setOps",
        "getCountry",
        "setCountry",
        "getSubjectId",
        "setSubjectId",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;",
        "getResourceInfo",
        "setResourceInfo",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;)V",
        "getEpTitle",
        "setEpTitle",
        "I",
        "getRestrictKid",
        "setRestrictKid",
        "(I)V",
        "Z",
        "getBuiltIn",
        "setBuiltIn",
        "getStreams",
        "setStreams",
        "setSelected",
        "playListPosition",
        "getPlayListPosition",
        "setPlayListPosition",
        "playUrl",
        "getPlayUrl",
        "setPlayUrl",
        "durationMillis",
        "J",
        "getDurationMillis",
        "()J",
        "setDurationMillis",
        "(J)V",
        "getEp",
        "ep",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

.field private transient builtIn:Z

.field private category:Ljava/lang/String;

.field private corner:Ljava/lang/String;

.field private country:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Lcom/transsion/shorttv_pugc/bean/Cover;

.field private creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

.field private description:Ljava/lang/String;

.field private duration:Ljava/lang/Long;

.field private durationMillis:J

.field private epTitle:Ljava/lang/String;

.field private genres:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hashTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;",
            ">;"
        }
    .end annotation
.end field

.field private interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

.field private transient isSelected:Z

.field private ops:Ljava/lang/String;

.field private transient playListPosition:I

.field private playUrl:Ljava/lang/String;

.field private publishTime:Ljava/lang/Long;

.field private releaseDate:Ljava/lang/String;

.field private resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

.field private restrictKid:I

.field private streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private subjectId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private ugcVideoId:Ljava/lang/String;

.field private watchNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo$a;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo$a;-><init>()V

    sput-object v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    move-object/from16 v0, p0

    const v25, 0xffffff

    const/16 v26, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v26}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;",
            ">;",
            "Lcom/transsion/shorttv_pugc/bean/Cover;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    move-object v1, p11

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    move-object v1, p13

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    move/from16 v1, p21

    iput v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    const/4 v1, -0x1

    iput v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playListPosition:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move/from16 v0, p25

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_9

    :cond_9
    move-object/from16 v9, p10

    :goto_9
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v10, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    const/16 v22, 0x0

    if-eqz v21, :cond_14

    move/from16 v21, v22

    goto :goto_14

    :cond_14
    move/from16 v21, p21

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    move/from16 v23, v22

    goto :goto_15

    :cond_15
    move/from16 v23, p22

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p23

    :goto_16
    const/high16 v25, 0x800000

    and-int v0, v0, v25

    if-eqz v0, :cond_17

    goto :goto_17

    :cond_17
    move/from16 v22, p24

    :goto_17
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move/from16 p22, v21

    move/from16 p23, v23

    move-object/from16 p24, v24

    move/from16 p25, v22

    invoke-direct/range {p1 .. p25}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;ZILjava/lang/Object;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p25

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    goto :goto_14

    :cond_14
    move/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_15

    iget-boolean v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    goto :goto_15

    :cond_15
    move/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    goto :goto_17

    :cond_17
    move/from16 v1, p24

    :goto_17
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p23, v15

    move/from16 p24, v1

    invoke-virtual/range {p0 .. p24}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final component13()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    return-object v0
.end method

.method public final component14()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    return-object v0
.end method

.method public final component15()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    return v0
.end method

.method public final component22()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    return v0
.end method

.method public final component23()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    return-object v0
.end method

.method public final component24()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Lcom/transsion/shorttv_pugc/bean/Cover;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;",
            ">;",
            "Lcom/transsion/shorttv_pugc/bean/Cover;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;",
            ">;Z)",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    new-instance v25, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-object/from16 v0, v25

    invoke-direct/range {v0 .. v24}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;Z)V

    return-object v25
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    iget v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    iget-boolean v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    iget-boolean p1, p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    if-eq v1, p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public final getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    return-object v0
.end method

.method public final getBuiltIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getCorner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    return-object v0
.end method

.method public final getCover()Lcom/transsion/shorttv_pugc/bean/Cover;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    return-object v0
.end method

.method public final getCreator()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->durationMillis:J

    return-wide v0
.end method

.method public final getEp()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->videoUGCPosition()I

    move-result v0

    return v0
.end method

.method public final getEpTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getGenres()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    return-object v0
.end method

.method public final getHashTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    return-object v0
.end method

.method public final getInteractiveInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayListPosition()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playListPosition:I

    return v0
.end method

.method public final getPlayUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playUrl:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getReleaseDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getResourceInfo()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    return-object v0
.end method

.method public final getRestrictKid()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    return v0
.end method

.method public final getStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUgcVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWatchNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/Cover;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    if-nez v2, :cond_14

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDataNotComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    return v0
.end method

.method public isVideoPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    return v0
.end method

.method public final overrideCoverByFirstImage(Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;)V
    .locals 2

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setThumbnail(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setHeight(Ljava/lang/Integer;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setWidth(Ljava/lang/Integer;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setFormat(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setSize(Ljava/lang/Integer;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getAverageHueDark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setAverageHueDark(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getAverageHueLight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setAverageHueLight(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;->getGif()Lcom/transsion/shorttv_pugc/bean/GifBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv_pugc/bean/Cover;->setGifBean(Lcom/transsion/shorttv_pugc/bean/GifBean;)V

    :cond_8
    return-void
.end method

.method public final setBelongToCollection(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    return-void
.end method

.method public final setBuiltIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    return-void
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    return-void
.end method

.method public final setCorner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    return-void
.end method

.method public final setCountry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    return-void
.end method

.method public final setCover(Lcom/transsion/shorttv_pugc/bean/Cover;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    return-void
.end method

.method public final setCreator(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    return-void
.end method

.method public final setDurationMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->durationMillis:J

    return-void
.end method

.method public final setEpTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    return-void
.end method

.method public final setGenres(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    return-void
.end method

.method public final setHashTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    return-void
.end method

.method public final setInteractiveInfo(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    return-void
.end method

.method public final setPlayListPosition(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playListPosition:I

    return-void
.end method

.method public final setPlayUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPublishTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    return-void
.end method

.method public final setReleaseDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    return-void
.end method

.method public final setResourceInfo(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    return-void
.end method

.method public final setRestrictKid(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    return-void
.end method

.method public final setStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUgcVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoIsPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    return-void
.end method

.method public final setWatchNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    iget-object v5, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    iget-object v6, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    iget-object v8, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    iget-object v11, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    iget-object v13, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    iget-object v14, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    move-object/from16 v21, v15

    iget v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    move/from16 v22, v15

    iget-boolean v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    move/from16 v23, v15

    iget-object v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    move-object/from16 v24, v15

    iget-boolean v15, v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v15

    const-string v15, "UGCVideo(ugcVideoId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", corner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watchNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", genres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interactiveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", belongToCollection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", epTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", restrictKid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", builtIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", streams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public videoCorner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    return-object v0
.end method

.method public videoCoverUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public videoDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public videoThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public videoTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public videoUGCId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public videoUGCPosition()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->playListPosition:I

    :goto_0
    return v0
.end method

.method public videoUGCType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ugcVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->hashTags:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;

    invoke-virtual {v3, p1, p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->cover:Lcom/transsion/shorttv_pugc/bean/Cover;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->corner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->duration:Ljava/lang/Long;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->watchNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->releaseDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->publishTime:Ljava/lang/Long;

    if-nez v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->creator:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->interactiveInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->belongToCollection:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->ops:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->country:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->subjectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->resourceInfo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->epTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->restrictKid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->builtIn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->streams:Ljava/util/List;

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_6
    :goto_6
    iget-boolean p2, p0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
