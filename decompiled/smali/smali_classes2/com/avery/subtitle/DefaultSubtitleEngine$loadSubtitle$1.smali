.class final Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/DefaultSubtitleEngine;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLi5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lk5/d;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "",
        "subtitleMd5",
        "Lk5/d;",
        "timedTextObject",
        "",
        "invoke",
        "(Ljava/lang/String;Lk5/d;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $callback:Li5/b;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $refreshImmediately:Z

.field final synthetic $unicode:Ljava/lang/String;

.field final synthetic this$0:Lcom/avery/subtitle/DefaultSubtitleEngine;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;ZLi5/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->this$0:Lcom/avery/subtitle/DefaultSubtitleEngine;

    iput-object p3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$unicode:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$refreshImmediately:Z

    iput-object p5, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$callback:Li5/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lk5/d;

    invoke-virtual {p0, p1, p2}, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->invoke(Ljava/lang/String;Lk5/d;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Lk5/d;)V
    .locals 8

    invoke-static {}, Lcom/avery/subtitle/DefaultSubtitleEngine;->c()Ljava/lang/String;

    iget-object p1, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$path:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5176\u4ed6\u7684\u52a0\u8f7d\u6210\u529f: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->this$0:Lcom/avery/subtitle/DefaultSubtitleEngine;

    iget-object v3, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$unicode:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$refreshImmediately:Z

    iget-object v6, p0, Lcom/avery/subtitle/DefaultSubtitleEngine$loadSubtitle$1;->$callback:Li5/b;

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lcom/avery/subtitle/DefaultSubtitleEngine;->d(Lcom/avery/subtitle/DefaultSubtitleEngine;Ljava/lang/String;Ljava/lang/String;ZLi5/b;Lk5/d;)V

    return-void
.end method
