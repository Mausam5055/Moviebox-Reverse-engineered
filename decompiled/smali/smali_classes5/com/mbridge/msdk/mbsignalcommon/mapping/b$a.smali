.class public Lcom/mbridge/msdk/mbsignalcommon/mapping/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/mapping/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/mbsignalcommon/mapping/a;
        }
    .end annotation

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;

    iget-object v1, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$a;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V

    return-object v0
.end method
