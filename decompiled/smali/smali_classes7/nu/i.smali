.class public final synthetic Lnu/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tencent/tinker/lib/service/PatchResult;

.field public final synthetic b:J

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/tinker/lib/service/PatchResult;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/i;->a:Lcom/tencent/tinker/lib/service/PatchResult;

    iput-wide p2, p0, Lnu/i;->b:J

    iput-object p4, p0, Lnu/i;->c:Landroid/content/Context;

    iput-object p5, p0, Lnu/i;->d:Ljava/lang/String;

    iput-object p6, p0, Lnu/i;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lnu/i;->a:Lcom/tencent/tinker/lib/service/PatchResult;

    iget-wide v1, p0, Lnu/i;->b:J

    iget-object v3, p0, Lnu/i;->c:Landroid/content/Context;

    iget-object v4, p0, Lnu/i;->d:Ljava/lang/String;

    iget-object v5, p0, Lnu/i;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lnu/h$b;->a(Lcom/tencent/tinker/lib/service/PatchResult;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
