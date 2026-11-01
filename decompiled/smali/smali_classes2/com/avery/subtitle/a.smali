.class public final synthetic Lcom/avery/subtitle/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/avery/subtitle/DefaultSubtitleEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/avery/subtitle/DefaultSubtitleEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avery/subtitle/a;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/a;->a:Lcom/avery/subtitle/DefaultSubtitleEngine;

    invoke-static {v0, p1}, Lcom/avery/subtitle/DefaultSubtitleEngine;->a(Lcom/avery/subtitle/DefaultSubtitleEngine;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
