.class final Lcom/mbridge/msdk/foundation/same/directory/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/directory/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/File;

.field public b:Lcom/mbridge/msdk/foundation/same/directory/c;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/foundation/same/directory/c;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/directory/e$a;->b:Lcom/mbridge/msdk/foundation/same/directory/c;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/directory/e$a;->a:Ljava/io/File;

    return-void
.end method
