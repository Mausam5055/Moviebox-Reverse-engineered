.class public Lcom/tmc/network/HttpRequestor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;,
        Lcom/tmc/network/HttpRequestor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010!\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 N2\u00020\u0001:\u0002NOB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0011\u001a\u00020\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0002JZ\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJX\u0010\u0016\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dJL\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJJ\u0010\u0016\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dJ/\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\u0002J-\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00142\u0006\u0010\u001a\u001a\u00020\u001dH\u0086\u0002JG\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0086\u0002JE\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dH\u0086\u0002J\u0017\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010#J\u001c\u0010$\u001a\u00020%2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014H\u0002J\u001e\u0010&\u001a\u00020\'2\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0002J\u0006\u0010(\u001a\u00020\u0008J(\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0002J\u0014\u0010+\u001a\u0004\u0018\u00010\u00122\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u0002J\u001c\u0010-\u001a\u00020.2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0014H\u0002J\u001a\u0010/\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u00042\u0008\u00101\u001a\u0004\u0018\u000102H\u0002JD\u00103\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJ2\u00104\u001a\u00020\u001c2\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u00108\u001a\u0004\u0018\u0001092\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010;J<\u00104\u001a\u00020\u001c2\u0008\u00105\u001a\u0004\u0018\u0001062\u0008\u00107\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u00108\u001a\u0004\u0018\u0001092\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010;2\u0008\u0008\u0002\u0010<\u001a\u00020\nJZ\u0010=\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJX\u0010=\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dJN\u0010=\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002JL\u0010=\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dH\u0002JP\u0010>\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0008\u0010,\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0007JN\u0010>\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0008\u0010,\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u001dH\u0007J\\\u0010?\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0007JZ\u0010?\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dH\u0007JN\u0010A\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0007JL\u0010A\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dH\u0007JZ\u0010B\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJZ\u0010C\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bJX\u0010C\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001dJL\u0010C\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bJJ\u0010C\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00042\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001dJ\u001e\u0010D\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010E\u001a\u00020\u001c2\u0006\u0010\u0006\u001a\u00020\u0004J\"\u0010F\u001a\u00020\u001c2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00040H2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\u00040HJ\u000e\u0010J\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010K\u001a\u00020\u001c2\u0006\u0010L\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u001c2\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/tmc/network/HttpRequestor;",
        "",
        "()V",
        "appName",
        "",
        "appVersion",
        "country",
        "httpClient",
        "Lcom/tmc/network/HttpClient;",
        "ifCommonHeader",
        "",
        "ifGatewayAlwaysAccess",
        "isInit",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "language",
        "versionCode",
        "",
        "buildRequestBody",
        "Lokhttp3/RequestBody;",
        "headers",
        "",
        "formData",
        "delete",
        "Lokhttp3/Call;",
        "url",
        "params",
        "callback",
        "Lcom/tmc/network/INetworkCallback;",
        "",
        "Lokhttp3/Callback;",
        "requestBody",
        "get",
        "getCallTimeout",
        "",
        "value",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "getFormBody",
        "Lokhttp3/FormBody;",
        "getHeaders",
        "Lokhttp3/Headers;",
        "getHttpClient",
        "getHttpUrl",
        "Lokhttp3/HttpUrl;",
        "getJSONBody",
        "json",
        "getMultipartBody",
        "Lokhttp3/MultipartBody;",
        "getRawBody",
        "content",
        "type",
        "Lokhttp3/MediaType;",
        "head",
        "init",
        "context",
        "Landroid/content/Context;",
        "appId",
        "workMode",
        "Lcom/transsion/api/gateway/config/WorkMode;",
        "progressListener",
        "Lcom/tmc/network/ProgressListener;",
        "isNetworkMonitorEnable",
        "post",
        "postJSON",
        "postMultipart",
        "multipartData",
        "postRequestBody",
        "postV2",
        "put",
        "setAppInfo",
        "setCountry",
        "setGateWayActivateSignConfig",
        "hostList",
        "",
        "pathList",
        "setGatewayAlwaysAccess",
        "setIfCommonHeader",
        "commonHeader",
        "setLanguage",
        "Companion",
        "HttpRequestorHolder",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final APP_NAME:Ljava/lang/String;

.field private static final APP_VERSION:Ljava/lang/String;

.field private static final CALL_TIMEOUT:Ljava/lang/String; = "m-timeout"

.field private static final CONTENT_TYPE:Ljava/lang/String;

.field private static final COUNTRY:Ljava/lang/String;

.field public static final Companion:Lcom/tmc/network/HttpRequestor$Companion;

.field private static final ENCODING:Ljava/lang/String;

.field private static final GATEWAY_ALWAYS_ACCESS:Ljava/lang/String;

.field private static final LANGUAGE:Ljava/lang/String;

.field private static final MAX_CALL_TIMEOUT:J = 0x15f90L

.field private static final TIME_ZONE:Ljava/lang/String;

.field private static final VERSION_CODE:Ljava/lang/String;

.field private static enablePostMode:Z


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private final httpClient:Lcom/tmc/network/HttpClient;

.field private ifCommonHeader:Z

.field private ifGatewayAlwaysAccess:Z

.field private final isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private language:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tmc/network/HttpRequestor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tmc/network/HttpRequestor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    const-string v0, "UTF-8"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->ENCODING:Ljava/lang/String;

    const-string v0, "Content-Type"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    const-string v0, "Accept-Timezone"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->TIME_ZONE:Ljava/lang/String;

    const-string v0, "Accept-Language"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->LANGUAGE:Ljava/lang/String;

    const-string v0, "Accept-Country"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->COUNTRY:Ljava/lang/String;

    const-string v0, "x-tr-region"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->GATEWAY_ALWAYS_ACCESS:Ljava/lang/String;

    const-string v0, "appName"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->APP_NAME:Ljava/lang/String;

    const-string v0, "appVersion"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->APP_VERSION:Ljava/lang/String;

    const-string v0, "versionCode"

    sput-object v0, Lcom/tmc/network/HttpRequestor;->VERSION_CODE:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tmc/network/HttpRequestor;->enablePostMode:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tmc/network/HttpRequestor;->ifCommonHeader:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    new-instance v1, Lcom/tmc/network/HttpClient;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lcom/tmc/network/HttpClient;-><init>(Lcom/tmc/network/HttpClientConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$setEnablePostMode$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/tmc/network/HttpRequestor;->enablePostMode:Z

    return-void
.end method

.method private final buildRequestBody(Ljava/util/Map;Ljava/util/Map;)Lokhttp3/RequestBody;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "application/x-www-form-urlencoded"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "multipart/form-data"

    invoke-static {v1, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Gson().toJson(data)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_5
    :goto_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object p1

    return-object p1
.end method

.method private final getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/FormBody;"
        }
    .end annotation

    new-instance v0, Lokhttp3/FormBody$Builder;

    sget-object v1, Lcom/tmc/network/HttpRequestor;->ENCODING:Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V

    sget-object v1, Lgg/a;->a:Lgg/a;

    invoke-virtual {v1, p1}, Lgg/a;->c(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    return-object p1
.end method

.method private final getHeaders(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget-boolean v0, p0, Lcom/tmc/network/HttpRequestor;->ifCommonHeader:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tmc/network/HttpRequestor;->TIME_ZONE:Ljava/lang/String;

    sget-object v1, Lgg/a;->a:Lgg/a;

    invoke-virtual {v1}, Lgg/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/tmc/network/HttpRequestor;->ifGatewayAlwaysAccess:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tmc/network/HttpRequestor;->GATEWAY_ALWAYS_ACCESS:Ljava/lang/String;

    const-string v2, "CN"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgg/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tmc/network/HttpRequestor;->APP_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgg/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tmc/network/HttpRequestor;->APP_VERSION:Ljava/lang/String;

    iget-object v2, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v0, p0, Lcom/tmc/network/HttpRequestor;->versionCode:I

    if-lez v0, :cond_4

    sget-object v2, Lcom/tmc/network/HttpRequestor;->VERSION_CODE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, ""

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgg/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/tmc/network/HttpRequestor;->LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgg/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/tmc/network/HttpRequestor;->COUNTRY:Ljava/lang/String;

    iget-object v1, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lokhttp3/Headers$Builder;

    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method private final getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/HttpUrl;"
        }
    .end annotation

    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    :goto_0
    sget-object v1, Lgg/a;->a:Lgg/a;

    invoke-virtual {v1, p2}, Lgg/a;->c(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private final getJSONBody(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Gson().toJson(json)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    sget-object v1, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    invoke-virtual {v1}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tmc/network/HttpRequestor;->getRawBody(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private final getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/MultipartBody;"
        }
    .end annotation

    new-instance v0, Lokhttp3/MultipartBody$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lgg/a;->a:Lgg/a;

    invoke-virtual {v1, p1}, Lgg/a;->c(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    return-object p1
.end method

.method private final getRawBody(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
    .locals 1

    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0, p2, p1}, Lokhttp3/RequestBody$Companion;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic init$default(Lcom/tmc/network/HttpRequestor;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    sget-object p3, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tmc/network/HttpRequestor;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: init"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic init$default(Lcom/tmc/network/HttpRequestor;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;ZILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    sget-object p3, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;Z)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: init"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p5}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    sget-object p1, Lgg/b;->a:Lgg/b;

    invoke-virtual {p1, p2}, Lgg/b;->e(Ljava/lang/Throwable;)V

    invoke-interface {p5, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method private final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p5}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p5}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    sget-object p1, Lgg/b;->a:Lgg/b;

    invoke-virtual {p1, p2}, Lgg/b;->e(Ljava/lang/Throwable;)V

    invoke-interface {p5, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final delete(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p5}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p4}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    invoke-interface {p4, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    sget-object p1, Lgg/b;->a:Lgg/b;

    invoke-virtual {p1, p2}, Lgg/b;->e(Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p4}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/tmc/network/HttpRequestor;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V

    return-void
.end method

.method public final getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    return-object v0

    :cond_1
    const-wide/32 v3, 0x15f90

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object v1, Lgg/b;->a:Lgg/b;

    invoke-virtual {v1, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public final getHttpClient()Lcom/tmc/network/HttpClient;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    return-object v0
.end method

.method public final head(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v1, p4}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    invoke-interface {p4, v0, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    sget-object p1, Lgg/b;->a:Lgg/b;

    invoke-virtual {p1, p2}, Lgg/b;->e(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "HttpRequestor"

    const-string v2, "HttpRequestor will init"

    invoke-virtual {v0, v1, v2}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "HttpRequestor"

    const-string v2, "HttpRequestor start init."

    invoke-virtual {v0, v1, v2}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tmc/network/NetworkConfig;->setNetworkMonitorEnable(Z)V

    invoke-static {p1, p2, p3}, Lcom/transsion/api/gateway/GateWaySdk;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V

    sget-object p2, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    invoke-virtual {p2, p4}, Lcom/tmc/network/HttpClient$Companion;->setProgressListener(Lcom/tmc/network/ProgressListener;)V

    sget-object p2, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {p2, p1}, Lcom/tmc/network/NetworkMonitor;->init(Landroid/content/Context;)V

    sget-object p2, Lcom/tmc/network/strategy/d;->b:Lcom/tmc/network/strategy/d$a;

    invoke-virtual {p2}, Lcom/tmc/network/strategy/d$a;->a()Lcom/tmc/network/strategy/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tmc/network/strategy/d;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/tmc/network/NetworkAdapter;->INSTANCE:Lcom/tmc/network/NetworkAdapter;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkAdapter;->init()V

    iget-object p1, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;Z)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "HttpRequestor"

    const-string v2, "HttpRequestor will init"

    invoke-virtual {v0, v1, v2}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "HttpRequestor"

    const-string v2, "HttpRequestor start init. isNetworkMonitorEnable ="

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    sget-object v1, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v1, p5}, Lcom/tmc/network/NetworkConfig;->setNetworkMonitorEnable(Z)V

    invoke-static {p1, p2, p3}, Lcom/transsion/api/gateway/GateWaySdk;->init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V

    const-string p2, "HttpRequestor"

    const-string p3, "HttpRequestor GateWaySdk init finish"

    invoke-virtual {v0, p2, p3}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    invoke-virtual {p2, p4}, Lcom/tmc/network/HttpClient$Companion;->setProgressListener(Lcom/tmc/network/ProgressListener;)V

    sget-object p2, Lcom/tmc/network/NetworkMonitor;->INSTANCE:Lcom/tmc/network/NetworkMonitor;

    invoke-virtual {p2, p1}, Lcom/tmc/network/NetworkMonitor;->init(Landroid/content/Context;)V

    sget-object p2, Lcom/tmc/network/strategy/d;->b:Lcom/tmc/network/strategy/d$a;

    invoke-virtual {p2}, Lcom/tmc/network/strategy/d$a;->a()Lcom/tmc/network/strategy/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tmc/network/strategy/d;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/tmc/network/NetworkAdapter;->INSTANCE:Lcom/tmc/network/NetworkAdapter;

    invoke-virtual {p1}, Lcom/tmc/network/NetworkAdapter;->init()V

    iget-object p1, p0, Lcom/tmc/network/HttpRequestor;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postJSON(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getJSONBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final postJSON(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getJSONBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final postMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getMultipartBody(Ljava/util/Map;)Lokhttp3/MultipartBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postRequestBody(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final postRequestBody(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final postV2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-boolean p2, Lcom/tmc/network/HttpRequestor;->enablePostMode:Z

    if-eqz p2, :cond_2

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p4}, Lcom/tmc/network/HttpRequestor;->buildRequestBody(Ljava/util/Map;Ljava/util/Map;)Lokhttp3/RequestBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lcom/tmc/network/INetworkCallback;)Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lcom/tmc/network/INetworkCallback;",
            ")",
            "Lokhttp3/Call;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tmc/network/NetworkCallback;

    invoke-direct {v0, p5}, Lcom/tmc/network/NetworkCallback;-><init>(Lcom/tmc/network/INetworkCallback;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p3, "m-timeout"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tmc/network/HttpRequestor;->getCallTimeout(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_1
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1, v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    sget-object p1, Lgg/b;->a:Lgg/b;

    invoke-virtual {p1, p2}, Lgg/b;->e(Ljava/lang/Throwable;)V

    invoke-interface {p5, v1, p2}, Lcom/tmc/network/INetworkCallback;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lokhttp3/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    sget-object p2, Lcom/tmc/network/HttpRequestor;->CONTENT_TYPE:Ljava/lang/String;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, Lcom/tmc/network/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/tmc/network/HttpRequestor;->getFormBody(Ljava/util/Map;)Lokhttp3/FormBody;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tmc/network/HttpRequestor;->put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public final put(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lokhttp3/RequestBody;Lokhttp3/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p3}, Lcom/tmc/network/HttpRequestor;->getHttpUrl(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/tmc/network/HttpRequestor;->getHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/tmc/network/HttpRequestor;->httpClient:Lcom/tmc/network/HttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tmc/network/HttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p5}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lgg/b;->a:Lgg/b;

    invoke-virtual {p2, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tmc/network/HttpRequestor;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tmc/network/HttpRequestor;->appVersion:Ljava/lang/String;

    iput p3, p0, Lcom/tmc/network/HttpRequestor;->versionCode:I

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 1

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tmc/network/HttpRequestor;->country:Ljava/lang/String;

    return-void
.end method

.method public final setGateWayActivateSignConfig(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hostList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/transsion/api/gateway/GateWaySdk;->setActivateSignConfig(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final setGatewayAlwaysAccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/HttpRequestor;->ifGatewayAlwaysAccess:Z

    return-void
.end method

.method public final setIfCommonHeader(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tmc/network/HttpRequestor;->ifCommonHeader:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tmc/network/HttpRequestor;->language:Ljava/lang/String;

    return-void
.end method
