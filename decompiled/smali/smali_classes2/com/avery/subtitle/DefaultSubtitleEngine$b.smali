.class public final Lcom/avery/subtitle/DefaultSubtitleEngine$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avery/subtitle/SubtitleLoader$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/DefaultSubtitleEngine;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLi5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/avery/subtitle/DefaultSubtitleEngine;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Li5/b;


# direct methods
.method constructor <init>(Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLi5/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    iput-object p2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->e:Z

    iput-object p6, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->f:Li5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    invoke-static {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->b(Lcom/avery/subtitle/DefaultSubtitleEngine;)Ll5/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ll5/a;->k(Ljava/lang/String;Lk5/d;)V

    invoke-static {}, Lcom/avery/subtitle/DefaultSubtitleEngine;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->f:Li5/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li5/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Lk5/d;)V
    .locals 8

    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    invoke-static {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->b(Lcom/avery/subtitle/DefaultSubtitleEngine;)Ll5/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Ll5/a;->k(Ljava/lang/String;Lk5/d;)V

    iget-object v0, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    invoke-static {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine;->b(Lcom/avery/subtitle/DefaultSubtitleEngine;)Ll5/a;

    move-result-object v0

    iget-object v1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll5/a;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    iget-object v3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->e:Z

    iget-object v6, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$b;->f:Li5/b;

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lcom/avery/subtitle/DefaultSubtitleEngine;->d(Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;Ljava/lang/String;ZLi5/b;Lk5/d;)V

    return-void
.end method
