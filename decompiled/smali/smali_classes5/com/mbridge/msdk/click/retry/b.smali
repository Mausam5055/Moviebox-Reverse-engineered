.class public Lcom/mbridge/msdk/click/retry/b;
.super Ljava/lang/Object;


# static fields
.field public static k:I = 0x0

.field public static l:I = 0x1


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private e:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/click/retry/b;->c:Ljava/util/HashSet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/click/retry/b;->d:J

    iput-object p1, p0, Lcom/mbridge/msdk/click/retry/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/click/retry/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/b;->e:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/click/retry/b;->j:I

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/retry/b;->e:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/click/retry/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/click/retry/b;->b:I

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/click/retry/b;->h:Z

    return-void
.end method

.method public b()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/b;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/click/retry/b;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/click/retry/b;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/click/retry/b;->i:Z

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/click/retry/b;->d:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/click/retry/b;->j:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/click/retry/b;->b:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/click/retry/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/click/retry/b;->g:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/click/retry/b;->h:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/click/retry/b;->i:Z

    return v0
.end method
