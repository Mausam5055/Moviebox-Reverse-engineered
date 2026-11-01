.class public final Lv6/r;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv6/r;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv6/r;->a:J

    const/4 p1, 0x0

    iput-object p1, p0, Lv6/r;->b:Ljava/lang/String;

    return-void
.end method
