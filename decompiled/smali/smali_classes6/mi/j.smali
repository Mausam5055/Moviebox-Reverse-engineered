.class public final synthetic Lmi/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/pslink/b;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/pslink/b;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi/j;->a:Lcom/transsion/ad/db/pslink/b;

    iput-wide p2, p0, Lmi/j;->b:J

    iput-wide p4, p0, Lmi/j;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lmi/j;->a:Lcom/transsion/ad/db/pslink/b;

    iget-wide v1, p0, Lmi/j;->b:J

    iget-wide v3, p0, Lmi/j;->c:J

    move-object v5, p1

    check-cast v5, Lz3/b;

    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/db/pslink/b;->g(Lcom/transsion/ad/db/pslink/b;JJLz3/b;)Lcom/transsion/ad/db/pslink/AttributionPoint;

    move-result-object p1

    return-object p1
.end method
