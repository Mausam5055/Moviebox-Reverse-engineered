.class Lcom/google/protobuf/l1$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final ITERABLE:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/l1$d$a;

    invoke-direct {v0}, Lcom/google/protobuf/l1$d$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/l1$d;->ITERATOR:Ljava/util/Iterator;

    new-instance v0, Lcom/google/protobuf/l1$d$b;

    invoke-direct {v0}, Lcom/google/protobuf/l1$d$b;-><init>()V

    sput-object v0, Lcom/google/protobuf/l1$d;->ITERABLE:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/google/protobuf/l1$d;->ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method static iterable()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/l1$d;->ITERABLE:Ljava/lang/Iterable;

    return-object v0
.end method
