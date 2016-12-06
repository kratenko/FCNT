function [ output_args ] = switch_pu( pu )
    
    if strcmp(pu, 'cpu')
        fprintf('Switching to CPU\n');
        caffe('set_mode_cpu');
    elseif strcmp(pu, 'gpu')
        fprintf('Switching to GPU\n');
        caffe('set_mode_gpu');
    else
        error('Unknown PU');
    end

end

