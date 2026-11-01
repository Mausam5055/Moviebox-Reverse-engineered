.class abstract Lcom/transsion/audio/view/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/transsion/audio/view/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/view/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/view/d;-><init>(Lcom/transsion/audio/view/e;)V

    sput-object v0, Lcom/transsion/audio/view/d$b;->a:Lcom/transsion/audio/view/d;

    return-void
.end method

.method static bridge synthetic a()Lcom/transsion/audio/view/d;
    .locals 1

    sget-object v0, Lcom/transsion/audio/view/d$b;->a:Lcom/transsion/audio/view/d;

    return-object v0
.end method
