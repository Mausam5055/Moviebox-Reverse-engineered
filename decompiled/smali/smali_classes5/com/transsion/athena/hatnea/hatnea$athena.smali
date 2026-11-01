.class Lcom/transsion/athena/hatnea/hatnea$athena;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/hatnea/hatnea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "athena"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([BILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/hatnea/hatnea$athena;->a:[B

    iput p2, p0, Lcom/transsion/athena/hatnea/hatnea$athena;->b:I

    iput-object p3, p0, Lcom/transsion/athena/hatnea/hatnea$athena;->c:Ljava/util/List;

    return-void
.end method

.method public static a([BILjava/util/List;I)Lcom/transsion/athena/hatnea/hatnea$athena;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/transsion/athena/hatnea/hatnea$athena;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/athena/hatnea/hatnea$athena;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/athena/hatnea/hatnea$athena;-><init>([BILjava/util/List;I)V

    return-object v0
.end method
