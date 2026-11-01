.class public final synthetic Lv6/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lv6/d;->a:J

    iput-wide p3, p0, Lv6/d;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lv6/d;->a:J

    iget-wide v2, p0, Lv6/d;->b:J

    invoke-static {v0, v1, v2, v3}, Lv6/e;->c(JJ)V

    return-void
.end method
