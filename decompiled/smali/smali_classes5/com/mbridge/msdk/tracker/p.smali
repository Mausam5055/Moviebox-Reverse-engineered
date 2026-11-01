.class public Lcom/mbridge/msdk/tracker/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/network/toolbox/a;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/p;->a:Lcom/mbridge/msdk/tracker/network/toolbox/a;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/p;->b:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/tracker/p;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/p;->c:I

    return v0
.end method

.method public b()Lcom/mbridge/msdk/tracker/network/toolbox/a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/p;->a:Lcom/mbridge/msdk/tracker/network/toolbox/a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/p;->b:Ljava/lang/String;

    return-object v0
.end method
