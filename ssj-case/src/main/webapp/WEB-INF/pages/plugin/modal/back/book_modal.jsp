<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="modal fade" id="bookInfo"  tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true" data-keyboard="true">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal" aria-hidden="true">&times;</button>
				<div class="form-group" id="didDiv">
					<strong><span class="las la-eye"></span>&nbsp;查看图书信息</strong></h3>
				</div>
			</div>
			<div class="modal-body">
			    <div class="col-12">
                    <div class="row g-3">
                        <div class="col-md-12 col-xl-12 col-xxl-12">
                            <div class="mx-project-card t-bg-white t-shadow">
                                <div class="mx-project-card__head align-items-center">
                                    <div class="avatars avatars--circle avatars--xl mb-2 me-4">
                                        <img src="/upload/book/nophoto.png" alt="max" class="img-fulid w-100" id="bookCover">
                                        <div class="avatars__status">
                                            <i class="las la-check"></i>
                                        </div>
                                    </div>
                                    <div class="mx-project-card__head-content mb-2">
                                        <h5 class="id-card__title text-capitalize mt-0 mb-0">
                                            <span id="bookName"></span>
                                        </h5>
                                        <span class="id-card__sub-title text-capitalize xsm-text d-block">
                                            <span class="d-inline-block t-mr-8 t-text-1 sm-text">
                                                <span class="fa fa-address-card-o"></span>
                                            </span>
                                            <span id="bookAuthor"></span>
                                        </span>
                                        <span class="id-card__sub-title text-capitalize xsm-text d-block">
                                            <span class="d-inline-block t-mr-8 t-text-1 sm-text">
                                                <span class="fa fa-envelope-o"></span>
                                            </span>
                                            muyan@yootk.com
                                        </span>
                                    </div>
                                </div>
                                <div class="mx-project-card__body mt-2">
                                    <div class="row">
                                        <div class="avatars avatars--circle avatars--xl mb-2 me-4">&nbsp;</div>
                                        <div class="col-9">
                                            <p class="sm-text mb-3" id="bookNote"></p>
                                        </div>
                                    </div>
                                    <div class="row g-2">
                                        <div class="col-9">
                                            <div class="row">
                                                <div class="col-4">
                                                    <span class="font-weight-md text-capitalize sm-text">
                                                        图书价格
                                                    </span>
                                                </div>
                                                <div class="col-8">
                                                    <span class="font-weight-md text-capitalize sm-text text-danger" id="bookPrice">
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-9">
                                            <div class="row">
                                                <div class="col-4">
                                                    <span class="font-weight-md text-capitalize sm-text">
                                                        图书分类
                                                    </span>
                                                </div>
                                                <div class="col-8">
                                                    <span class="font-weight-md text-capitalize sm-text text-success" id="bookItem">
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-9">
                                            <div class="row">
                                                <div class="col-4">
                                                    <span class="font-weight-md text-capitalize sm-text">
                                                        出版机构
                                                    </span>
                                                </div>
                                                <div class="col-8">
                                                    <span class="font-weight-md sm-text">
                                                        <a href="https://www.yootk.com" target="_ablank">沐言优拓（www.yootk.com）</a>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭窗口</button>
			</div>
		</div>
	</div>
</div>
