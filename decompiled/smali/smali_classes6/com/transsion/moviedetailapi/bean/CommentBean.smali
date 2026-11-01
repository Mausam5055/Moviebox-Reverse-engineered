.class public final Lcom/transsion/moviedetailapi/bean/CommentBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ln6/a;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetailapi/bean/CommentBean$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008F\u0008\u0007\u0018\u0000 `2\u00020\u00012\u00020\u0002:\u0001aB\u00e3\u0001\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\t\u0012\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\u0014\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u001a\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u000c\u00a2\u0006\u0004\u0008 \u0010!R$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\"\u001a\u0004\u0008\'\u0010$\"\u0004\u0008(\u0010&R$\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\"\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&R$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u0010\u000b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R$\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R$\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\"\u001a\u0004\u0008?\u0010$\"\u0004\u0008@\u0010&R$\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\"\u001a\u0004\u0008A\u0010$\"\u0004\u0008B\u0010&R$\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\"\u001a\u0004\u0008C\u0010$\"\u0004\u0008D\u0010&R$\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\"\u001a\u0004\u0008E\u0010$\"\u0004\u0008F\u0010&R$\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\"\u001a\u0004\u0008G\u0010$\"\u0004\u0008H\u0010&R\"\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u00105\u001a\u0004\u0008I\u00107\"\u0004\u0008J\u00109R,\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR$\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\"\u001a\u0004\u0008P\u0010$\"\u0004\u0008Q\u0010&R$\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\"\u001a\u0004\u0008R\u0010$\"\u0004\u0008S\u0010&R$\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\"\u001a\u0004\u0008T\u0010$\"\u0004\u0008U\u0010&R,\u0010\u001a\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010K\u001a\u0004\u0008V\u0010M\"\u0004\u0008W\u0010OR$\u0010\u001b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010:\u001a\u0004\u0008\u001b\u0010<\"\u0004\u0008X\u0010>R$\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010Y\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u0014\u0010_\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008^\u00107\u00a8\u0006b"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
        "Ljava/io/Serializable;",
        "Ln6/a;",
        "",
        "avatarUrl",
        "commentId",
        "content",
        "",
        "createdAt",
        "",
        "gender",
        "likeCnt",
        "",
        "likeStatu",
        "nickName",
        "replyedCommentId",
        "replyedNickName",
        "replyedUid",
        "rootCommentId",
        "subCommentCnt",
        "",
        "subComments",
        "topicId",
        "topicType",
        "uid",
        "Lcom/transsion/moviedetailapi/bean/Cover;",
        "imageList",
        "isHot",
        "Lin/c;",
        "localParam",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lin/c;)V",
        "isSubComment",
        "()Z",
        "Ljava/lang/String;",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "setAvatarUrl",
        "(Ljava/lang/String;)V",
        "getCommentId",
        "setCommentId",
        "getContent",
        "setContent",
        "Ljava/lang/Long;",
        "getCreatedAt",
        "()Ljava/lang/Long;",
        "setCreatedAt",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Integer;",
        "getGender",
        "()Ljava/lang/Integer;",
        "setGender",
        "(Ljava/lang/Integer;)V",
        "I",
        "getLikeCnt",
        "()I",
        "setLikeCnt",
        "(I)V",
        "Ljava/lang/Boolean;",
        "getLikeStatu",
        "()Ljava/lang/Boolean;",
        "setLikeStatu",
        "(Ljava/lang/Boolean;)V",
        "getNickName",
        "setNickName",
        "getReplyedCommentId",
        "setReplyedCommentId",
        "getReplyedNickName",
        "setReplyedNickName",
        "getReplyedUid",
        "setReplyedUid",
        "getRootCommentId",
        "setRootCommentId",
        "getSubCommentCnt",
        "setSubCommentCnt",
        "Ljava/util/List;",
        "getSubComments",
        "()Ljava/util/List;",
        "setSubComments",
        "(Ljava/util/List;)V",
        "getTopicId",
        "setTopicId",
        "getTopicType",
        "setTopicType",
        "getUid",
        "setUid",
        "getImageList",
        "setImageList",
        "setHot",
        "Lin/c;",
        "getLocalParam",
        "()Lin/c;",
        "setLocalParam",
        "(Lin/c;)V",
        "getItemType",
        "itemType",
        "Companion",
        "a",
        "MovieDetailApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/moviedetailapi/bean/CommentBean$a;

.field public static final VIEW_TYPE_COMMENT:I = 0x0

.field public static final VIEW_TYPE_COMMENT_HOT:I = 0x4

.field public static final VIEW_TYPE_COMMENT_SUB:I = 0x1

.field public static final VIEW_TYPE_COMMENT_SUB_MORE:I = 0x2

.field public static final VIEW_TYPE_UNKNOWN:I = 0x3


# instance fields
.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatarUrl"
    .end annotation
.end field

.field private commentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commentId"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private createdAt:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createdAt"
    .end annotation
.end field

.field private gender:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field private imageList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Cover;",
            ">;"
        }
    .end annotation
.end field

.field private isHot:Ljava/lang/Boolean;

.field private likeCnt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likeCnt"
    .end annotation
.end field

.field private likeStatu:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likeStatu"
    .end annotation
.end field

.field private localParam:Lin/c;

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickName"
    .end annotation
.end field

.field private replyedCommentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replyedCommentId"
    .end annotation
.end field

.field private replyedNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replyedNickName"
    .end annotation
.end field

.field private replyedUid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replyedUid"
    .end annotation
.end field

.field private rootCommentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rootCommentId"
    .end annotation
.end field

.field private subCommentCnt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subCommentCnt"
    .end annotation
.end field

.field private subComments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subComments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;"
        }
    .end annotation
.end field

.field private topicId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topicId"
    .end annotation
.end field

.field private topicType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "topicType"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/moviedetailapi/bean/CommentBean$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/moviedetailapi/bean/CommentBean$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->Companion:Lcom/transsion/moviedetailapi/bean/CommentBean$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lin/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Cover;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lin/c;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->avatarUrl:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->commentId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->content:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->createdAt:Ljava/lang/Long;

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->gender:Ljava/lang/Integer;

    move v1, p6

    iput v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->likeCnt:I

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->likeStatu:Ljava/lang/Boolean;

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->nickName:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedCommentId:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedNickName:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedUid:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->rootCommentId:Ljava/lang/String;

    move v1, p13

    iput v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->subCommentCnt:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->subComments:Ljava/util/List;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->topicId:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->topicType:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->uid:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->imageList:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->isHot:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/transsion/moviedetailapi/bean/CommentBean;->localParam:Lin/c;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lin/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move/from16 v9, p6

    :goto_0
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_1

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    move/from16 v16, p13

    :goto_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v22, v1

    goto :goto_2

    :cond_2
    move-object/from16 v22, p19

    :goto_2
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move-object/from16 v23, v0

    goto :goto_3

    :cond_3
    move-object/from16 v23, p20

    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-direct/range {v3 .. v23}, Lcom/transsion/moviedetailapi/bean/CommentBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Lin/c;)V

    return-void
.end method


# virtual methods
.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->createdAt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getGender()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->gender:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Cover;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getItemType()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->isHot:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/bean/CommentBean;->isSubComment()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getLikeCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->likeCnt:I

    return v0
.end method

.method public final getLikeStatu()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->likeStatu:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLocalParam()Lin/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->localParam:Lin/c;

    return-object v0
.end method

.method public final getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReplyedCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getReplyedNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedNickName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReplyedUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedUid:Ljava/lang/String;

    return-object v0
.end method

.method public final getRootCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->rootCommentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubCommentCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->subCommentCnt:I

    return v0
.end method

.method public final getSubComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->subComments:Ljava/util/List;

    return-object v0
.end method

.method public final getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopicType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->topicType:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final isHot()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->isHot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSubComment()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->rootCommentId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->localParam:Lin/c;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lin/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->commentId:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->content:Ljava/lang/String;

    return-void
.end method

.method public final setCreatedAt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->createdAt:Ljava/lang/Long;

    return-void
.end method

.method public final setGender(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->gender:Ljava/lang/Integer;

    return-void
.end method

.method public final setHot(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->isHot:Ljava/lang/Boolean;

    return-void
.end method

.method public final setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/Cover;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->imageList:Ljava/util/List;

    return-void
.end method

.method public final setLikeCnt(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->likeCnt:I

    return-void
.end method

.method public final setLikeStatu(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->likeStatu:Ljava/lang/Boolean;

    return-void
.end method

.method public final setLocalParam(Lin/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->localParam:Lin/c;

    return-void
.end method

.method public final setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public final setReplyedCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedCommentId:Ljava/lang/String;

    return-void
.end method

.method public final setReplyedNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedNickName:Ljava/lang/String;

    return-void
.end method

.method public final setReplyedUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->replyedUid:Ljava/lang/String;

    return-void
.end method

.method public final setRootCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->rootCommentId:Ljava/lang/String;

    return-void
.end method

.method public final setSubCommentCnt(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->subCommentCnt:I

    return-void
.end method

.method public final setSubComments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/CommentBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->subComments:Ljava/util/List;

    return-void
.end method

.method public final setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->topicId:Ljava/lang/String;

    return-void
.end method

.method public final setTopicType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->topicType:Ljava/lang/String;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CommentBean;->uid:Ljava/lang/String;

    return-void
.end method
