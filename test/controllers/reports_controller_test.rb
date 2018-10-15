require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get reports_url
    assert_response :success
  end

  test "should get new" do
    get new_report_url
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post reports_url, params: { report: { descripcion_denuncia: @report.descripcion_denuncia, direccion_denuncia: @report.direccion_denuncia, envio_notificacion: @report.envio_notificacion, tipo_denuncia: @report.tipo_denuncia } }
    end

    assert_redirected_to report_url(Report.last)
  end

  test "should show report" do
    get report_url(@report)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_url(@report)
    assert_response :success
  end

  test "should update report" do
    patch report_url(@report), params: { report: { descripcion_denuncia: @report.descripcion_denuncia, direccion_denuncia: @report.direccion_denuncia, envio_notificacion: @report.envio_notificacion, tipo_denuncia: @report.tipo_denuncia } }
    assert_redirected_to report_url(@report)
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete report_url(@report)
    end

    assert_redirected_to reports_url
  end
end
