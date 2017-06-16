function y = eigen_loss(logits, depths, invalid_depths)
% EIGEN_LOSS Calculates the Eigen loss.
% y = eigen_loss(logits, depths, invalid_depths)
%     invalid_depths: sign(depths)
    logits_flat = reshape(logits, [], 55*74);
    depths_flat = reshape(depths, [], 55*74);
    invalid_depths_flat = reshape(invalid_depths, [], 55*74);

    predict = logits_flat .* invalid_depths_flat;
    target = depths_flat .* invalid_depths_flat;
    d = predict - target;
    square_d = d.^2;
    sum_square_d = sum(square_d, 2);
    sum_d = sum(d, 2);
    sqare_sum_d = sum_d.^2;
    y = mean(sum_square_d / 55.0*74.0 - 0.5*sqare_sum_d / (55*74)^2);
end