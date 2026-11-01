.class public interface abstract Lcom/cloud/tmc/kernel/resolver/ResultResolver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final INTERSECTION_BOOL_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/resolver/ResultResolver<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITIVE_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/kernel/resolver/ResultResolver<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/resolver/BoolIntersectionResolver;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/resolver/BoolIntersectionResolver;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/resolver/ResultResolver;->INTERSECTION_BOOL_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    new-instance v0, Lcom/cloud/tmc/kernel/resolver/BoolPositiveResolver;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/resolver/BoolPositiveResolver;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/resolver/ResultResolver;->POSITIVE_RESOLVER:Lcom/cloud/tmc/kernel/resolver/ResultResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
