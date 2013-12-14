.class public Lcom/mobeta/android/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScroller;,
        Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;,
        Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DropListener;,
        Lcom/mobeta/android/dslv/DragSortListView$DragListener;,
        Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;,
        Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$SmoothAnimator;,
        Lcom/mobeta/android/dslv/DragSortListView$HeightCache;,
        Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 33
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 440
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 78
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 88
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 99
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 100
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 125
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 179
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 190
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 197
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 213
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 219
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 231
    const v4, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 238
    const v4, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 263
    const/high16 v4, 0x3f00

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 271
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mobeta/android/dslv/DragSortListView$1;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 335
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 341
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 346
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 351
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 371
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 378
    const/high16 v4, 0x3e80

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 387
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 400
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 410
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 417
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 431
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;-><init>(Lcom/mobeta/android/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    .line 2017
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 442
    const/16 v25, 0x96

    .line 443
    .local v25, defaultDuration:I
    move/from16 v28, v25

    .line 444
    .local v28, removeAnimDuration:I
    move/from16 v26, v25

    .line 446
    .local v26, dropAnimDuration:I
    if-eqz p2, :cond_2

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v9, Lcom/aokp/romcontrol/R$styleable;->DragSortListView:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v23

    .line 450
    .local v23, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 453
    const/4 v4, 0x5

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    .line 456
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v4, :cond_0

    .line 457
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    .line 461
    :cond_0
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    .line 462
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 464
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 466
    const/4 v4, 0x0

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/4 v11, 0x7

    const/high16 v12, 0x3f40

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 471
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    .line 473
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 477
    .local v27, frac:F
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 479
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 483
    const/16 v4, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 487
    const/16 v4, 0x9

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 491
    const/16 v4, 0x10

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 495
    .local v32, useDefault:Z
    if-eqz v32, :cond_1

    .line 496
    const/16 v4, 0xc

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    .line 499
    .local v29, removeEnabled:Z
    const/4 v4, 0x4

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 502
    .local v7, removeMode:I
    const/16 v4, 0xb

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 505
    .local v31, sortEnabled:Z
    const/16 v4, 0xd

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 508
    .local v6, dragInitMode:I
    const/16 v4, 0xe

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 511
    .local v5, dragHandleId:I
    const/16 v4, 0xf

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 514
    .local v8, clickRemoveId:I
    const/4 v4, 0x3

    const/high16 v9, -0x100

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    .line 518
    .local v24, bgColor:I
    new-instance v3, Lcom/mobeta/android/dslv/DragSortController;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;IIII)V

    .line 521
    .local v3, controller:Lcom/mobeta/android/dslv/DragSortController;
    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 522
    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 523
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/mobeta/android/dslv/DragSortController;->setBackgroundColor(I)V

    .line 525
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 529
    .end local v3           #controller:Lcom/mobeta/android/dslv/DragSortController;
    .end local v5           #dragHandleId:I
    .end local v6           #dragInitMode:I
    .end local v7           #removeMode:I
    .end local v8           #clickRemoveId:I
    .end local v24           #bgColor:I
    .end local v29           #removeEnabled:Z
    .end local v31           #sortEnabled:Z
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    .end local v23           #a:Landroid/content/res/TypedArray;
    .end local v27           #frac:F
    .end local v32           #useDefault:Z
    :cond_2
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    .line 534
    const/high16 v30, 0x3f00

    .line 535
    .local v30, smoothness:F
    if-lez v28, :cond_3

    .line 536
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-direct {v4, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    .line 539
    :cond_3
    if-lez v26, :cond_4

    .line 540
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v26

    invoke-direct {v4, v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;-><init>(Lcom/mobeta/android/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    .line 543
    :cond_4
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 546
    new-instance v4, Lcom/mobeta/android/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mobeta/android/dslv/DragSortListView$2;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 563
    return-void

    .line 471
    .end local v30           #smoothness:F
    .restart local v23       #a:Landroid/content/res/TypedArray;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$102(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$1900(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$200(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2100(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2300(Lcom/mobeta/android/dslv/DragSortListView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2402(Lcom/mobeta/android/dslv/DragSortListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mobeta/android/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/mobeta/android/dslv/DragSortListView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$302(Lcom/mobeta/android/dslv/DragSortListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$400(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lcom/mobeta/android/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcom/mobeta/android/dslv/DragSortListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/mobeta/android/dslv/DragSortListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1701
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1702
    .local v2, first:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1704
    .local v4, last:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1705
    .local v0, begin:I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1707
    .local v1, end:I
    move v3, v0

    .local v3, i:I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1708
    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1709
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1710
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1707
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1713
    .end local v5           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1718
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1719
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1721
    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .parameter "position"
    .parameter "v"
    .parameter "invalidChildHeight"

    .prologue
    .line 1731
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1732
    .local v0, height:I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1734
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1735
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1736
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1741
    :cond_0
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1742
    :cond_1
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_5

    move-object v4, p2

    .line 1743
    check-cast v4, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    .line 1752
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1753
    .local v2, oldVis:I
    const/4 v3, 0x0

    .line 1755
    .local v3, vis:I
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1756
    const/4 v3, 0x4

    .line 1759
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1760
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1762
    :cond_4
    return-void

    .line 1744
    .end local v2           #oldVis:I
    .end local v3           #vis:I
    :cond_5
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1745
    check-cast v4, Lcom/mobeta/android/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/mobeta/android/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_0
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1415
    .local v0, firstPos:I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1418
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1419
    .local v2, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 1420
    .local v1, top:I
    if-eqz v2, :cond_0

    .line 1421
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1424
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1426
    .end local v1           #top:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .parameter "movePos"
    .parameter "moveItem"
    .parameter "oldFirstExpPos"
    .parameter "oldSecondExpPos"

    .prologue
    .line 1896
    const/4 v0, 0x0

    .line 1898
    .local v0, adjust:I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 1900
    .local v1, childHeight:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1901
    .local v6, moveHeightBefore:I
    invoke-direct {p0, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 1903
    .local v5, moveHeightAfter:I
    move v4, v6

    .line 1904
    .local v4, moveBlankBefore:I
    move v3, v5

    .line 1905
    .local v3, moveBlankAfter:I
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 1906
    sub-int/2addr v4, v1

    .line 1907
    sub-int/2addr v3, v1

    .line 1910
    :cond_0
    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1911
    .local v2, maxBlank:I
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 1912
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 1915
    :cond_1
    if-gt p1, p3, :cond_3

    .line 1916
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 1917
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 1935
    :cond_2
    :goto_0
    return v0

    .line 1919
    :cond_3
    if-ne p1, p4, :cond_6

    .line 1920
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 1921
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 1922
    :cond_4
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 1923
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 1925
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 1928
    :cond_6
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 1929
    sub-int/2addr v0, v2

    goto :goto_0

    .line 1930
    :cond_7
    iget v7, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 1931
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 7
    .parameter "position"
    .parameter "childHeight"

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 1853
    .local v0, divHeight:I
    iget-boolean v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .line 1854
    .local v2, isSliding:Z
    :goto_0
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v5, v6

    .line 1855
    .local v3, maxNonSrcBlankHeight:I
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 1859
    .local v4, slideHeight:I
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    .line 1860
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v5, v6, :cond_2

    .line 1861
    if-eqz v2, :cond_1

    .line 1862
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v1, v4, v5

    .line 1885
    .local v1, height:I
    :goto_1
    return v1

    .line 1853
    .end local v1           #height:I
    .end local v2           #isSliding:Z
    .end local v3           #maxNonSrcBlankHeight:I
    .end local v4           #slideHeight:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1864
    .restart local v2       #isSliding:Z
    .restart local v3       #maxNonSrcBlankHeight:I
    .restart local v4       #slideHeight:I
    :cond_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .restart local v1       #height:I
    goto :goto_1

    .line 1866
    .end local v1           #height:I
    :cond_2
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v5, v6, :cond_3

    .line 1868
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v1, v5, v4

    .restart local v1       #height:I
    goto :goto_1

    .line 1870
    .end local v1           #height:I
    :cond_3
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    .restart local v1       #height:I
    goto :goto_1

    .line 1872
    .end local v1           #height:I
    :cond_4
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v5, :cond_6

    .line 1873
    if-eqz v2, :cond_5

    .line 1874
    add-int v1, p2, v4

    .restart local v1       #height:I
    goto :goto_1

    .line 1876
    .end local v1           #height:I
    :cond_5
    add-int v1, p2, v3

    .restart local v1       #height:I
    goto :goto_1

    .line 1878
    .end local v1           #height:I
    :cond_6
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v5, :cond_7

    .line 1880
    add-int v5, p2, v3

    sub-int v1, v5, v4

    .restart local v1       #height:I
    goto :goto_1

    .line 1882
    .end local v1           #height:I
    :cond_7
    move v1, p2

    .restart local v1       #height:I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .parameter "position"
    .parameter "item"
    .parameter "invalidChildHeight"

    .prologue
    .line 1846
    invoke-direct {p0, p1, p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1352
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1353
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1354
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1355
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1356
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1640
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1641
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1643
    invoke-direct {p0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1645
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1646
    .local v2, minY:I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1649
    .local v1, maxY:I
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1651
    .local v0, currentScrollDir:I
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1654
    if-eq v0, v6, :cond_0

    .line 1656
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1660
    :cond_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1677
    :cond_1
    :goto_0
    return-void

    .line 1661
    :cond_2
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1664
    if-eq v0, v6, :cond_3

    .line 1666
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1670
    :cond_3
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1672
    :cond_4
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1675
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2248
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2249
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2252
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2253
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2255
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1517
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    .line 1518
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1519
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1520
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1522
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1523
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->clear()V

    .line 1524
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .parameter "movePos"
    .parameter "moveItem"
    .parameter "forceInvalidate"

    .prologue
    .line 2157
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2159
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateFloatView()V

    .line 2161
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2162
    .local v0, oldFirstExpPos:I
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2164
    .local v1, oldSecondExpPos:I
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2166
    .local v3, updated:Z
    if-eqz v3, :cond_0

    .line 2167
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 2168
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2171
    .local v2, scroll:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/mobeta/android/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2172
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->layoutChildren()V

    .line 2175
    .end local v2           #scroll:I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2176
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->invalidate()V

    .line 2179
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2180
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .parameter "forceInvalidate"

    .prologue
    .line 2146
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2147
    .local v1, movePos:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2149
    .local v0, moveItem:Landroid/view/View;
    if-nez v0, :cond_0

    .line 2154
    :goto_0
    return-void

    .line 2153
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1383
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1384
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1392
    const/4 v0, 0x1

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1395
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1399
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1401
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1402
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1405
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1406
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1410
    :goto_0
    return-void

    .line 1408
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .parameter "expPosition"
    .parameter "canvas"

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 683
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 686
    .local v3, dividerHeight:I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 688
    .local v4, expItem:Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 690
    .local v5, l:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 694
    .local v6, r:I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 696
    .local v1, childHeight:I
    iget v8, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 697
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 698
    .local v7, t:I
    add-int v0, v7, v3

    .line 706
    .local v0, b:I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 707
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 708
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 709
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 710
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 713
    .end local v0           #b:I
    .end local v1           #childHeight:I
    .end local v4           #expItem:Landroid/view/ViewGroup;
    .end local v5           #l:I
    .end local v6           #r:I
    .end local v7           #t:I
    :cond_0
    return-void

    .line 700
    .restart local v1       #childHeight:I
    .restart local v4       #expItem:Landroid/view/ViewGroup;
    .restart local v5       #l:I
    .restart local v6       #r:I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 701
    .restart local v0       #b:I
    sub-int v7, v0, v3

    .restart local v7       #t:I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1361
    const/4 v1, 0x2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1363
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1365
    .local v0, numHeaders:I
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1368
    .end local v0           #numHeaders:I
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1370
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustOnReorder()V

    .line 1371
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1372
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1375
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1376
    const/4 v1, 0x3

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1380
    :goto_0
    return-void

    .line 1378
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private getChildHeight(I)I
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1765
    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return v1

    .line 1769
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1771
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1774
    invoke-direct {p0, p1, v4, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1778
    :cond_2
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1779
    .local v1, childHeight:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1785
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1788
    .local v2, type:I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1789
    .local v3, typeCount:I
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1790
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1793
    :cond_3
    if-ltz v2, :cond_5

    .line 1794
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1795
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1796
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1806
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1809
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mChildHeightCache:Lcom/mobeta/android/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1798
    :cond_4
    iget-object v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1802
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .parameter "position"
    .parameter "item"
    .parameter "invalidChildHeight"

    .prologue
    const/4 v1, 0x0

    .line 1816
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 1842
    .end local p2
    :cond_0
    :goto_0
    return v1

    .line 1821
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1822
    :cond_2
    move-object v0, p2

    .line 1827
    .end local p2
    .local v0, child:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1829
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1830
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1831
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1824
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p2
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #child:Landroid/view/View;
    goto :goto_1

    .line 1835
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1837
    .local v1, childHeight:I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1838
    :cond_5
    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1839
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 757
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .parameter "position"
    .parameter "top"

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 831
    .local v7, numHeaders:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 837
    .local v6, numFooters:I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 884
    :goto_0
    return v3

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 845
    .local v2, divHeight:I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 846
    .local v5, maxBlankHeight:I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 847
    .local v1, childHeight:I
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 851
    .local v4, itemHeight:I
    move v8, p2

    .line 852
    .local v8, otop:I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 855
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 856
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 857
    add-int v9, p2, v4

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 878
    :cond_2
    :goto_1
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 879
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/mobeta/android/dslv/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, edge:I
    goto :goto_0

    .line 859
    .end local v3           #edge:I
    :cond_3
    sub-int v0, v4, v1

    .line 860
    .local v0, blankHeight:I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 861
    goto :goto_1

    .line 862
    .end local v0           #blankHeight:I
    :cond_4
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 863
    sub-int v8, p2, v5

    goto :goto_1

    .line 869
    :cond_5
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 870
    add-int v8, p2, v5

    goto :goto_1

    .line 871
    :cond_6
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 872
    sub-int v0, v4, v1

    .line 873
    .restart local v0       #blankHeight:I
    add-int v8, p2, v0

    goto :goto_1

    .line 881
    .end local v0           #blankHeight:I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3       #edge:I
    goto :goto_0
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    .line 2020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewInvalidated:Z

    .line 2021
    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1956
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1957
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 1959
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 1939
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1940
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1941
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1943
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1945
    .local v2, wspec:I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 1946
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1950
    .local v0, hspec:I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1951
    return-void

    .line 1948
    .end local v0           #hspec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #hspec:I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    .line 762
    const-string v0, "mobeta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    .line 1527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1528
    .local v0, action:I
    if-eqz v0, :cond_0

    .line 1529
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1530
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1532
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    .line 1533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    .line 1534
    if-nez v0, :cond_1

    .line 1535
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastX:I

    .line 1536
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastY:I

    .line 1538
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetX:I

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mOffsetY:I

    .line 1540
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2188
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2189
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2190
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2193
    :cond_0
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2194
    .local v2, floatX:I
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2197
    .local v3, floatY:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2198
    .local v7, padLeft:I
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2199
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2205
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2206
    .local v6, numHeaders:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2207
    .local v5, numFooters:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2208
    .local v1, firstPos:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2211
    .local v4, lastPos:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2212
    .local v8, topLimit:I
    if-ge v1, v6, :cond_2

    .line 2213
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2215
    :cond_2
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2216
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2217
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2222
    :cond_3
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2223
    .local v0, bottomLimit:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2224
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2226
    :cond_4
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2227
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2228
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2236
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2237
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2243
    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    .line 2244
    return-void

    .line 2200
    .end local v0           #bottomLimit:I
    .end local v1           #firstPos:I
    .end local v4           #lastPos:I
    .end local v5           #numFooters:I
    .end local v6           #numHeaders:I
    .end local v8           #topLimit:I
    :cond_7
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2201
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2238
    .restart local v0       #bottomLimit:I
    .restart local v1       #firstPos:I
    .restart local v4       #lastPos:I
    .restart local v5       #numFooters:I
    .restart local v6       #numHeaders:I
    .restart local v8       #topLimit:I
    :cond_8
    iget v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2239
    iget-object v9, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 890
    .local v9, first:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 891
    .local v23, startPos:I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 893
    .local v25, startView:Landroid/view/View;
    if-nez v25, :cond_0

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 895
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 897
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 899
    .local v24, startTop:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 901
    .local v10, itemHeight:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 902
    .local v5, edge:I
    move v13, v5

    .line 904
    .local v13, lastEdge:I
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 908
    .local v4, divHeight:I
    move/from16 v11, v23

    .line 909
    .local v11, itemPos:I
    move/from16 v12, v24

    .line 910
    .local v12, itemTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 913
    :goto_0
    if-ltz v11, :cond_1

    .line 914
    add-int/lit8 v11, v11, -0x1

    .line 915
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 917
    if-nez v11, :cond_7

    .line 918
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 957
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 958
    .local v15, numHeaders:I
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 960
    .local v14, numFooters:I
    const/16 v26, 0x0

    .line 962
    .local v26, updated:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 963
    .local v16, oldFirstExpPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 964
    .local v17, oldSecondExpPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 966
    .local v18, oldSlideFrac:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 967
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 970
    .local v7, edgeToEdge:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 971
    move v6, v5

    .line 972
    .local v6, edgeBottom:I
    move v8, v13

    .line 979
    .local v8, edgeTop:I
    :goto_2
    const/high16 v27, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 980
    .local v21, slideRgnHeight:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 981
    .local v22, slideRgnHeightF:F
    add-int v20, v8, v21

    .line 982
    .local v20, slideEdgeTop:I
    sub-int v19, v6, v21

    .line 985
    .local v19, slideEdgeBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 986
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 987
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 988
    const/high16 v27, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    .line 1006
    .end local v6           #edgeBottom:I
    .end local v7           #edgeToEdge:I
    .end local v8           #edgeTop:I
    .end local v19           #slideEdgeBottom:I
    .end local v20           #slideEdgeTop:I
    .end local v21           #slideRgnHeight:I
    .end local v22           #slideRgnHeightF:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 1007
    move v11, v15

    .line 1008
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1009
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1016
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 1017
    :cond_3
    const/16 v26, 0x1

    .line 1020
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/mobeta/android/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1025
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1026
    const/16 v26, 0x1

    .line 1029
    :cond_6
    return v26

    .line 922
    .end local v14           #numFooters:I
    .end local v15           #numHeaders:I
    .end local v16           #oldFirstExpPos:I
    .end local v17           #oldSecondExpPos:I
    .end local v18           #oldSlideFrac:F
    .end local v26           #updated:Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 923
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 926
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 930
    move v13, v5

    goto/16 :goto_0

    .line 935
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 936
    .local v3, count:I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 937
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 938
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 939
    goto/16 :goto_1

    .line 942
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 943
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 944
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/mobeta/android/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 948
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 952
    move v13, v5

    .line 953
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 974
    .end local v3           #count:I
    .restart local v7       #edgeToEdge:I
    .restart local v14       #numFooters:I
    .restart local v15       #numHeaders:I
    .restart local v16       #oldFirstExpPos:I
    .restart local v17       #oldSecondExpPos:I
    .restart local v18       #oldSlideFrac:F
    .restart local v26       #updated:Z
    :cond_a
    move v8, v5

    .line 975
    .restart local v8       #edgeTop:I
    move v6, v13

    .restart local v6       #edgeBottom:I
    goto/16 :goto_2

    .line 990
    .restart local v19       #slideEdgeBottom:I
    .restart local v20       #slideEdgeTop:I
    .restart local v21       #slideRgnHeight:I
    .restart local v22       #slideRgnHeightF:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 991
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 992
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 994
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 995
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 996
    const/high16 v27, 0x3f00

    const/high16 v28, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobeta/android/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 1001
    .end local v6           #edgeBottom:I
    .end local v7           #edgeToEdge:I
    .end local v8           #edgeTop:I
    .end local v19           #slideEdgeBottom:I
    .end local v20           #slideEdgeTop:I
    .end local v21           #slideRgnHeight:I
    .end local v22           #slideRgnHeightF:F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1002
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 1010
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/mobeta/android/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 1012
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1013
    move-object/from16 v0, p0

    iput v11, v0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1680
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1681
    .local v2, padTop:I
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1682
    .local v1, listHeight:I
    int-to-float v0, v1

    .line 1684
    .local v0, heightF:F
    int-to-float v3, v2

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1685
    int-to-float v3, v2

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1687
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1688
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1690
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1691
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1692
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1337
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1339
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->destroyFloatView()V

    .line 1340
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->clearPositions()V

    .line 1341
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->adjustAllItems()V

    .line 1343
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1344
    const/4 v0, 0x3

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 717
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 719
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 721
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 722
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 724
    :cond_0
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 725
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 732
    .local v8, w:I
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 733
    .local v7, h:I
    const/high16 v0, 0x437f

    iget v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    float-to-int v5, v0

    .line 735
    .local v5, alpha:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 737
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 738
    invoke-virtual {p1, v3, v3, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 741
    int-to-float v3, v8

    int-to-float v4, v7

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 742
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 743
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 744
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 746
    .end local v5           #alpha:I
    .end local v7           #h:I
    .end local v8           #w:I
    :cond_2
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 2333
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1976
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1978
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 1983
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 1985
    :cond_0
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1986
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1988
    :cond_1
    return-void
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1324
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 1326
    .local v0, count:I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1330
    .end local v0           #count:I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x4

    .line 1993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1995
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2014
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1997
    :pswitch_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_0

    .line 1998
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->cancelDrag()V

    .line 2000
    :cond_0
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2004
    :pswitch_1
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_1

    .line 2005
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->stopDrag(Z)Z

    .line 2007
    :cond_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 2010
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 1995
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1034
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1036
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1039
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 1545
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1546
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1592
    :cond_0
    :goto_0
    return v1

    .line 1549
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1550
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1554
    .local v0, action:I
    if-nez v0, :cond_3

    .line 1555
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1557
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1558
    goto :goto_0

    .line 1560
    :cond_2
    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1563
    :cond_3
    const/4 v1, 0x0

    .line 1566
    .local v1, intercept:Z
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1568
    const/4 v1, 0x1

    .line 1588
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1589
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1570
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1571
    const/4 v1, 0x1

    .line 1574
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1580
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1581
    iput v2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1577
    :pswitch_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1583
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1963
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1965
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1966
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 1969
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1971
    :cond_1
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 1972
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1696
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1697
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1698
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 1466
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1467
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1513
    :cond_0
    :goto_0
    return v2

    .line 1471
    :cond_1
    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1472
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1475
    :cond_2
    const/4 v2, 0x0

    .line 1477
    .local v2, more:Z
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1478
    .local v1, lastCallWasIntercept:Z
    iput-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1480
    if-nez v1, :cond_3

    .line 1481
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1485
    :cond_3
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1486
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1487
    const/4 v2, 0x1

    goto :goto_0

    .line 1493
    :cond_4
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1494
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1495
    const/4 v2, 0x1

    .line 1499
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1501
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1507
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1508
    const/4 v3, 0x1

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1504
    :pswitch_1
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeItem(I)V
    .locals 4
    .parameter "which"

    .prologue
    const/4 v3, 0x4

    .line 1281
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1282
    :cond_0
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1284
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 1285
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 1286
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 1287
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 1288
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1289
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1290
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    .end local v0           #v:Landroid/view/View;
    :cond_1
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1295
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1305
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1306
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveAnimator:Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1311
    :cond_3
    :goto_1
    return-void

    .line 1297
    :pswitch_0
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1300
    :pswitch_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1308
    :cond_4
    invoke-direct {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1891
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 1893
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 600
    new-instance v0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;-><init>(Lcom/mobeta/android/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    .line 602
    if-eqz p1, :cond_2

    .line 603
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 605
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 606
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 608
    :cond_0
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 609
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 611
    :cond_1
    instance-of v0, p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 612
    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mAdapterWrapper:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 2329
    iput-boolean p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragEnabled:Z

    .line 2330
    return-void
.end method

.method public setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2315
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragListener:Lcom/mobeta/android/dslv/DragSortListView$DragListener;

    .line 2316
    return-void
.end method

.method public setDragScrollProfile(Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0
    .parameter "ssp"

    .prologue
    .line 2407
    if-eqz p1, :cond_0

    .line 2408
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mScrollProfile:Lcom/mobeta/android/dslv/DragSortListView$DragScrollProfile;

    .line 2410
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .parameter "heightFraction"

    .prologue
    .line 1605
    invoke-virtual {p0, p1, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1606
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .parameter "upperFrac"
    .parameter "lowerFrac"

    .prologue
    const/high16 v1, 0x3f00

    .line 1620
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1621
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1626
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1627
    iput v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1632
    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->updateScrollStarts()V

    .line 1635
    :cond_0
    return-void

    .line 1623
    :cond_1
    iput p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1629
    :cond_2
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/mobeta/android/dslv/DragSortListView$DragSortListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2394
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 2395
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragListener(Lcom/mobeta/android/dslv/DragSortListView$DragListener;)V

    .line 2396
    invoke-virtual {p0, p1}, Lcom/mobeta/android/dslv/DragSortListView;->setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V

    .line 2397
    return-void
.end method

.method public setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .line 2346
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 571
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 572
    return-void
.end method

.method public setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 2311
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    .line 2312
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .parameter "max"

    .prologue
    .line 585
    iput p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 586
    return-void
.end method

.method public setRemoveListener(Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2359
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mRemoveListener:Lcom/mobeta/android/dslv/DragSortListView$RemoveListener;

    .line 2360
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .parameter "position"
    .parameter "dragFlags"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v0, 0x0

    .line 2047
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return v0

    .line 2051
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatViewManager:Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2053
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2056
    invoke-virtual/range {v0 .. v5}, Lcom/mobeta/android/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .parameter "position"
    .parameter "floatView"
    .parameter "dragFlags"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2084
    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 2142
    :cond_1
    :goto_0
    return v2

    .line 2088
    :cond_2
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2089
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2092
    :cond_3
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2093
    .local v0, pos:I
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFirstExpPos:I

    .line 2094
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSecondExpPos:I

    .line 2095
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    .line 2096
    iput v0, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatPos:I

    .line 2099
    iput v6, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragState:I

    .line 2100
    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2101
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragFlags:I

    .line 2103
    iput-object p2, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2104
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->measureFloatView()V

    .line 2106
    iput p4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    .line 2107
    iput p5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    .line 2108
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iput v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragStartY:I

    .line 2111
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mX:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2112
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/mobeta/android/dslv/DragSortListView;->mY:I

    iget v5, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2115
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2117
    .local v1, srcItem:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2118
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2121
    :cond_4
    iget-boolean v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2122
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2127
    :cond_5
    iget v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2136
    :goto_1
    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->requestLayout()V

    .line 2138
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2139
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mLiftAnimator:Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lcom/mobeta/android/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2129
    :pswitch_0
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2132
    :pswitch_1
    iget-object v3, p0, Lcom/mobeta/android/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 3
    .parameter "remove"

    .prologue
    const/4 v0, 0x1

    .line 1440
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1441
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragScroller:Lcom/mobeta/android/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1443
    if-eqz p1, :cond_1

    .line 1444
    iget v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/mobeta/android/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->removeItem(I)V

    .line 1453
    :goto_0
    iget-boolean v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDragSortTracker:Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1460
    :cond_0
    :goto_1
    return v0

    .line 1446
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1447
    iget-object v1, p0, Lcom/mobeta/android/dslv/DragSortListView;->mDropAnimator:Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lcom/mobeta/android/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1449
    :cond_2
    invoke-direct {p0}, Lcom/mobeta/android/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1460
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
